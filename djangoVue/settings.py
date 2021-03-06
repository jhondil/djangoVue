"""
Django settings for djangoVue project.

Generated by 'django-admin startproject' using Django 3.2.7.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-ey)cs7#xu@iaa2_itxtb8izc(9p9gcrf&)#1$qqyz(2^+2r94x'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = [    
    'testdjango.com' ,'localhost', '127.0.0.1'
    ]



CORS_ALLOW_ALL_ORIGINS = True

CORS_ALLOWED_ORIGINS = [

    "http://localhost:8080",
    
]


# Application definition

INSTALLED_APPS = [
    'applications.account',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'django.contrib.sitemaps',
    'applications.Listelement',
    'applications.store',
    'rest_framework',
    'corsheaders',
    'django_extensions',
    'social_django',
    

]


MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    'social_django.middleware.SocialAuthExceptionMiddleware',
]

ROOT_URLCONF = 'djangoVue.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'] ,
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.media',
            ],
        },
    },
]

WSGI_APPLICATION = 'djangoVue.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'UdemyTiendaOnline',
        'USER': 'postgres',
        'PASSWORD': 'devincap@3*',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}


# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

AUTHENTICATION_BACKENDS = [
    'django.contrib.auth.backends.ModelBackend',    
    'social_core.backends.google.GoogleOAuth2',
    'social_core.backends.twitter.TwitterOAuth',
    'social_core.backends.facebook.FacebookOAuth2',
    # 'social_core.backends.live.LiveOAuth2',
    # 'social_core.backends.azuread.AzureADOAuth2',
    # 'social_core.backends.azuread_tenant.AzureADTenantOAuth2',
    # 'social_core.backends.microsoft.MicrosoftOAuth2',
    
    # 'social_core.backends.twitter.TwitterOAuth',
    # 'social_core.backends.facebook.FacebookOAuth2',
]

SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = '961755421675-rc9nivacvgkavvkmn33i510gsp4faj37.apps.googleusercontent.com'
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = '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'

SOCIAL_AUTH_FACEBOOK_KEY = '896282701021374'
SOCIAL_AUTH_FACEBOOK_SECRET = 'b95a05b334efdf9c47732a98d99d4f43'
SOCIAL_AUTH_FACEBOOK_SCOPE = ['email']

# SOCIAL_AUTH_LIVE_KEY = '95c71827-cf35-4117-99be-35f810edd5ae'
# SOCIAL_AUTH_LIVE_SECRET = '69830509-6606-4f43-a71c-f992a1567682'

# SOCIAL_AUTH_AZUREAD_OAUTH2_KEY = '95c71827-cf35-4117-99be-35f810edd5ae'
# SOCIAL_AUTH_AZUREAD_OAUTH2_SECRET = '69830509-6606-4f43-a71c-f992a1567682'

# SOCIAL_AUTH_AZUREAD_TENANT_OAUTH2_KEY = 'f098a7e5-2caf-4bbe-bd4e-00fef7b6673e'
# SOCIAL_AUTH_AZUREAD_TENANT_OAUTH2_SECRET = '2a1ec2ca-86ec-4caf-a9ec-be79786f6c78'
# SOCIAL_AUTH_AZUREAD_TENANT_OAUTH2_TENANT_ID = '2a1ec2ca-86ec-4caf-a9ec-be79786f6c78'




# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'

MEDIA_ROOT = BASE_DIR/'uploads/'

MEDIA_URL = '/uploads/'


# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

LOGOUT_REDIRECT_URL='/accounts/login'

# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
# EMAIL_USE_TLS = True
# EMAIL_HOST = 'smtp.gmail.com'
# EMAIL_HOST_USER = 'xxxxxxxxxxxxxxxx'
# EMAIL_HOST_PASSWORD = 'xxxxxxxxxxxxxxxxxxxxxx'
# EMAIL_PORT = 587


PAYPAL_CLIENT_ID = 'Ad_nhp7ZJ466U5ZaDI7SWhqBl4tUOUquV7RpU0BSTrdvBWu7xN9ZPq3mMmK_X-5WFOpJ0eoXc5v5esSZ'
PAYPAL_CLIENT_SECRET = 'EOfWLzogKxds8iawERGDejwk7ptlBrFewgDCoTqjGQ9SnTNm_Ihuk4pdJkD-RqyrZ_WIPA-3xNdNAXcS'

