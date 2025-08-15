from django.db import models
from django.contrib.postgres.fields import ArrayField


class Projects (models.Model): 
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=800)
    tecnologies = ArrayField(models.CharField(max_length=200), default=list,blank=True)
    link_front = models.URLField(default="", max_length=200)
    link_back = models.URLField(default="", max_length=200)
    
    def __str__(self):
        return self.title + " " + self.description

class Media(models.Model):
   project = models.ForeignKey(Projects, on_delete=models.CASCADE, related_name='medias', max_length=200, null=True,blank=True)
   url = models.URLField(max_length=200)

   def __str__(self):
    return str(self.project)


class Education(models.Model): 
    title = models.CharField(max_length=200)
    university = models.CharField(max_length=200)
    description = models.CharField(default="",max_length=800)
    start_date = models.DateField()
    end_date = models.DateField()

    def __str__(self):
        return self.title

class SectionText(models.Model):
    CHOICES = [
        ('sidebar', 'Sidebar'),
        ('presentation', 'Presentation'),
        ('skills', 'Skills'),
        ('soft_skills', 'Soft Skills'),
        ('contact', 'Contact'),
    ]
    
    section_text = models.CharField(max_length=200, choices=CHOICES, blank=True, null=True)
    title_section = models.CharField(max_length=200, blank=True, null=True)
    title = models.CharField(max_length=200, blank=True, null=True)
    content = models.JSONField(blank=True, null=True)
    button_text = models.CharField(max_length=200, blank=True, null=True)
    
    def __str__(self):
        return f"{self.title} {self.content}"