# Generated by Django 4.2 on 2023-05-11 01:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('items', '0025_remove_order_products_order_items'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='items',
        ),
        migrations.AddField(
            model_name='order',
            name='products',
            field=models.TextField(default='items'),
        ),
    ]
