# Generated by Django 4.2 on 2023-05-10 00:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('items', '0010_alter_order_options'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='created_at',
            new_name='date',
        ),
        migrations.AlterField(
            model_name='order',
            name='product_name',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='order',
            name='product_price',
            field=models.DecimalField(decimal_places=2, max_digits=7),
        ),
    ]
