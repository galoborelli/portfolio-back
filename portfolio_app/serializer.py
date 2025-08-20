# serializers.py

from rest_framework import serializers
from .models import Projects, Media, Education, SectionText

class MediaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Media
        fields = ['url']

class ProjectSerializer(serializers.ModelSerializer):
    medias = MediaSerializer(many=True, read_only=True)

    class Meta:
        model = Projects
        fields = ['order', 'title', 'description', 'medias', 'tecnologies', 'link_front', 'link_back']


class EducationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Education
        fields = ['id', 'title', 'university', 'description', 'start_date', 'end_date']

class SectionTextSerializer(serializers.ModelSerializer):
    class Meta:
        model = SectionText
        fields = [ 'section_text', 'title_section', 'title', 'content', 'button_text']
