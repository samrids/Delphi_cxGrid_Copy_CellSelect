from rest_framework.serializers import ModelSerializer
from app.models import Shipment

class ShipmentListSerializer(ModelSerializer):
    class Meta:
        model = Shipment        
        fields = ["shipment_no"]

class ShipmentSerializer(ModelSerializer):
    class Meta:
        model = Shipment        
        fields = ["shipment_no", "description", "document"]

    # def save(self, *args, **kwargs):
    #     if self.instance.document:
    #         self.instance.document.delete()
    #     return super().save(*args, **kwargs)