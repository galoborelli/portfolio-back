from django.urls import path
from .views import ProjectsList, EducationList, MediaList



urlpatterns = [
  path('api/projects', ProjectsList.as_view(), name='projects-list'),
  path('api/education', EducationList.as_view(), name='education-list'),
  path('api/media', MediaList.as_view(), name='media-list'),
]
