from rest_framework.response import Response
from rest_framework.views import APIView
from .models import Projects, Education, Media


class ProjectsList(APIView):
    def get(self, request):
        projects = Projects.objects.all()
        return Response(projects)


class EducationList(APIView):
    def get(self, request):
        education = Education.objects.all()
        return Response(education)


class MediaList(APIView):
    def get(self, request):
        media = Media.objects.all()
        return Response(media)



    
    
