# Generated by Django 3.1.5 on 2021-03-21 08:45

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='buying_date',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
        migrations.AlterField(
            model_name='product',
            name='selling_date',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
    ]
