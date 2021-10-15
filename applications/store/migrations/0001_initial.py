# Generated by Django 3.2.7 on 2021-10-15 14:39

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Listelement', '0002_element_price'),
    ]

    operations = [
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('update_at', models.DateTimeField(auto_now_add=True)),
                ('payment_id', models.CharField(max_length=255)),
                ('payer_id', models.CharField(max_length=255)),
                ('price', models.DecimalField(decimal_places=2, default=60.0, max_digits=10)),
                ('element', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Listelement.element')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]