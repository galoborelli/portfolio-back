# Generated by Django 5.1 on 2025-06-17 15:47

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0004_alter_education_description'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='media',
            name='title',
        ),
        migrations.AddField(
            model_name='media',
            name='project',
            field=models.ForeignKey(max_length=200, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='medias', to='portfolio_app.projects'),
        ),
    ]
