from atexit import register
from django.contrib import admin
from app.models import City, Customer

admin.site.register(City)
# Register your models here.

admin.site.register(Customer)