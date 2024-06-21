# Generated by Django 5.0.3 on 2024-04-24 07:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('booking', '0024_rename_familyfun_cab_anytime_rename_easy_cab_easy_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='bus_faq',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description1', models.TextField(default='', help_text='Enter product info on a new line.')),
                ('description2', models.TextField(default='', help_text='Enter product info on a new line.')),
            ],
        ),
        migrations.CreateModel(
            name='bus_offercards',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='images/')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(max_length=100)),
                ('discount', models.TextField(default='', max_length=255)),
                ('valid', models.TextField(default='', max_length=255)),
                ('code', models.TextField(default='', max_length=255)),
                ('Link', models.CharField(default='', max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending01',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('point', models.TextField(default='')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending1',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(max_length=100)),
                ('image', models.ImageField(default='', upload_to='images/')),
                ('title', models.CharField(max_length=100)),
                ('point', models.CharField(default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending12',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('image', models.ImageField(upload_to='images/')),
                ('title', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending13',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending14',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=255)),
                ('point', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending15',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending16',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending17',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('photo', models.ImageField(default='', upload_to='images/')),
                ('title1', models.CharField(default='', max_length=100)),
                ('point', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending18',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(default='', upload_to='images/')),
                ('heading', models.CharField(default='', max_length=100)),
                ('heading1', models.CharField(default='', max_length=100)),
                ('heading2', models.CharField(default='', max_length=100)),
                ('offer', models.CharField(default='', max_length=100)),
                ('promocode', models.CharField(default='', max_length=100)),
                ('title', models.CharField(default='', max_length=100)),
                ('point', models.TextField(default='')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending19',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=255)),
                ('content', models.TextField()),
                ('photo', models.ImageField(upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending2',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending20',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('image', models.ImageField(default='', upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending21',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('image', models.ImageField(default='', upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending22',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('image', models.ImageField(default='', upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending23',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('image', models.ImageField(default='', upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending3',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(max_length=100)),
                ('point', models.CharField(default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending4',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(max_length=100)),
                ('code', models.CharField(max_length=100)),
                ('Image', models.ImageField(upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending5',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('point', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending6',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending7',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('image', models.ImageField(upload_to='images/')),
                ('title', models.CharField(max_length=100)),
                ('point', models.TextField(default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending8',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(default='', max_length=100)),
                ('title', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='bus_trending9',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='images/')),
            ],
        ),
        migrations.CreateModel(
            name='bus_whychoose',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('content', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='busfaq',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=100)),
                ('point1', models.TextField(default='', help_text='Enter product info on a new line.')),
            ],
        ),
    ]
