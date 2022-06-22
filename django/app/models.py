from django.db import models
import os
import uuid


class City(models.Model):
    city_name = models.CharField(max_length=150,null=False,blank=False)
    state_name = models.CharField(max_length=3,null=False,blank=False)

    def __str__(self):
        return self.city_name

class Customer(models.Model):
    first_name = models.CharField(max_length=150,null=False,blank=False)
    last_name = models.CharField(max_length=150,null=False,blank=False)	
    company_name = models.CharField(max_length=200,null=False,blank=False)
    address	= models.CharField(max_length=200,null=False,blank=False)
    city = models.ForeignKey(to=City,on_delete=models.CASCADE)
    phone1	= models.CharField(max_length=50,null=False,blank=False)
    phone2	= models.CharField(max_length=50,null=False,blank=False)
    email	= models.CharField(max_length=150,null=False,blank=False)
    web = models.CharField(max_length=250,null=False,blank=False)

    def __str__(self):
        return '{0} {1}'.format(self.first_name, self.last_name)

def shipment_upload_to(instance, filename):
    ext = filename.split('.')[-1]
    filename = '{}.{}'.format(uuid.uuid4().hex[:10], ext)
    return os.path.join("shipments", filename)

class Shipment(models.Model):
    shipment_no = models.CharField(max_length=50, blank=False, null=False, unique=True)
    description = models.CharField(max_length=255, blank=True)
    document    = models.FileField(upload_to=shipment_upload_to)
    document_date = models.DateField(auto_now_add=True, null=True)
    uploaded_at = models.DateTimeField(auto_now_add=True)        
    