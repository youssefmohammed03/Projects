# Generated by Django 4.2 on 2023-05-10 02:13

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('items', '0018_order_delete_cart_delete_cartitem'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='date_created',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item10_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item10_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item10_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item11_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item11_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item11_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item12_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item12_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item12_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item13_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item13_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item13_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item14_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item14_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item14_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item15_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item15_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item15_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item1_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item1_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item1_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item2_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item2_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item2_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item3_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item3_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item3_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item4_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item4_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item4_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item5_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item5_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item5_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item6_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item6_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item6_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item7_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item7_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item7_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item8_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item8_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item8_quantity',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item9_name',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item9_price',
        ),
        migrations.RemoveField(
            model_name='order',
            name='item9_quantity',
        ),
        migrations.AddField(
            model_name='order',
            name='product_name',
            field=models.CharField(default='item', max_length=255),
        ),
        migrations.AddField(
            model_name='order',
            name='product_price',
            field=models.DecimalField(decimal_places=2, default='0.00', max_digits=10),
        ),
        migrations.AddField(
            model_name='order',
            name='quantity',
            field=models.IntegerField(default=1),
        ),
        migrations.AddField(
            model_name='order',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
