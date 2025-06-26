from django.urls import path
from .views import ProjectsList, EducationList, MediaList



urlpatterns = [
  path('projects', ProjectsList.as_view(), name='projects-list'),
  path('education', EducationList.as_view(), name='education-list'),
  path('media', MediaList.as_view(), name='media-list'),
]
