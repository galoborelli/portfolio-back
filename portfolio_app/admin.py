from django.contrib import admin
from .models import Media, Education, Projects

@admin.register(Media)
class MediaAdmin(admin.ModelAdmin):
    list_display = ('url',)

@admin.register(Education)
class EducationAdmin(admin.ModelAdmin):
    list_display = ('title', 'university', 'description', 'start_date', 'end_date')

@admin.register(Projects)
class ProjectsAdmin(admin.ModelAdmin):
    list_display = ('title',)