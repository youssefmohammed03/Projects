# Generated by Django 4.2 on 2023-05-10 02:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('items', '0019_remove_order_date_created_remove_order_item10_name_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='product_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='product_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='user',
        ),
        migrations.AddField(
            model_name='order',
            name='products',
            field=models.TextField(default='items'),
        ),
    ]
