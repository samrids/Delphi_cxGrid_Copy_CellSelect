from django.shortcuts import render
from rest_framework import status
from rest_framework.parsers import MultiPartParser, FormParser
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import ShipmentSerializer
from .models import Shipment
from django.http import Http404


class ShipmentUpload(APIView):
    """
    List Shipment by Shipment No
    """
    parser_classes = [MultiPartParser, FormParser]
    # permission_classes = [IsAuthenticated]

    def post(self, request, format=None):
        serializer = ShipmentSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def get_object(self, document_date):
        try:
            return Shipment.objects.filter(document_date = document_date)
        except Shipment.DoesNotExist:
            raise Http404

    def get(self, request, document_date, format=None):
        dataset = self.get_object(document_date)
        serializer = ShipmentSerializer(dataset, many=True)
        return Response(serializer.data)      
        # return Response({"data": serializer.data})

