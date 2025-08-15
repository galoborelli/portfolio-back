from django.urls import path
from .views import ProjectsList, EducationList, MediaList, SectionTextList



urlpatterns = [
  path('projects', ProjectsList.as_view(), name='projects-list'),
  path('education', EducationList.as_view(), name='education-list'),
  path('media', MediaList.as_view(), name='media-list'),
  path('data-text', SectionTextList.as_view(), name='data-text-list'),
]
