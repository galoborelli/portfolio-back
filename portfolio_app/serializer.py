# serializers.py

from rest_framework import serializers
from .models import Projects, Media

class MediaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Media
        fields = ['url']

class ProjectSerializer(serializers.ModelSerializer):
    medias = MediaSerializer(many=True, read_only=True)

    class Meta:
        model = Projects
        fields = ['id', 'title', 'description', 'medias']
