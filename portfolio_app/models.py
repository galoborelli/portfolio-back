from django.db import models



class Projects (models.Model): 
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=200)
    
    def __str__(self):
        return self.title + " " + self.description

class Media(models.Model):
   project = models.ForeignKey(Projects, on_delete=models.CASCADE, related_name='medias', max_length=200, null=True)
   url = models.URLField(max_length=200)

   def __str__(self):
    return str(self.project)


class Education(models.Model): 
    title = models.CharField(max_length=200)
    university = models.CharField(max_length=200)
    description = models.CharField(max_length=800)
    start_date = models.DateField()
    end_date = models.DateField()

    def __str__(self):
        return self.title


