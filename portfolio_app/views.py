from rest_framework.response import Response
from rest_framework.views import APIView
from .models import Projects, Education, Media
from .serializer import ProjectSerializer, MediaSerializer, EducationSerializer





class ProjectsList(APIView):
    

    def get(self, request):
        projects = Projects.objects.all()
        serializer = ProjectSerializer(projects, many=True)
        print(serializer)
        return Response(serializer.data) 


class EducationList(APIView):
    
    
    def get(self, request):
        education = Education.objects.all()
        serializer = EducationSerializer(education, many=True)
        return Response(serializer.data)


class MediaList(APIView):
    
   
    def get(self, request):
        media = Media.objects.all()
        serializer = MediaSerializer(media, many=True)
        return Response(serializer.data)



    
    
