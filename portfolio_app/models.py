from django.db import models

class Media(models.Model):
    title = models.CharField(max_length=200)
    url = models.URLField(max_length=200)

    def __str__(self):
        return self.title

class Education(models.Model): 
    title = models.CharField(max_length=200)
    university = models.CharField(max_length=200)
    description = models.CharField(max_length=800)
    start_date = models.DateField()
    end_date = models.DateField()

    def __str__(self):
        return self.title


class Projects (models.Model): 
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=200)
    
    
