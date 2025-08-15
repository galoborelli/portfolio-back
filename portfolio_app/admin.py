from django.contrib import admin
from .models import Media, Education, Projects, SectionText
from django import forms
import json

@admin.register(Media)
class MediaAdmin(admin.ModelAdmin):
    list_display = ('url',)

@admin.register(Education)
class EducationAdmin(admin.ModelAdmin):
    list_display = ('title', 'university', 'description', 'start_date', 'end_date')

@admin.register(Projects)
class ProjectsAdmin(admin.ModelAdmin):
    list_display = ('title',  'tecnologies', 'link_front', 'link_back')




class SectionTextForm(forms.ModelForm):
    class Meta:
        model = SectionText
        fields = "__all__"
        widgets = {
            'content': forms.Textarea(attrs={'cols': 80, 'rows': 10}),
        }

    def clean_content(self):
        data = self.cleaned_data['content']
        if isinstance(data, str):
            try:
                data = json.loads(data)
            except json.JSONDecodeError:
                raise forms.ValidationError("El contenido debe ser un JSON válido")
        return data

@admin.register(SectionText)
class SectionTextAdmin(admin.ModelAdmin):
    form = SectionTextForm
    list_display = ('section_text', 'title_section', 'title', 'content', 'button_text')
