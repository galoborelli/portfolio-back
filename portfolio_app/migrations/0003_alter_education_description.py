# Generated by Django 5.1 on 2025-06-16 16:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0002_rename_video_media_delete_imageproject'),
    ]

    operations = [
        migrations.AlterField(
            model_name='education',
            name='description',
            field=models.CharField(max_length=400),
        ),
    ]
