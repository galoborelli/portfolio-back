
from django.urls import path
from . import views

urlpatterns = [
   path('projects/', views.ProjectsList.as_view(), name='project-list'),
   path('education/', views.EducationList.as_view(), name='education-list'),
   path('media/', views.MediaList.as_view(), name='media-list'),
]
