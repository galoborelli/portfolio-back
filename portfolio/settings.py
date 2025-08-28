from pathlib import Path
import os
from decouple import config
import dj_database_url

BASE_DIR = Path(__file__).resolve().parent.parent

# =========================
# Media / Cloudinary
# =========================
MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
DEFAULT_FILE_STORAGE = 'cloudinary_storage.storage.MediaCloudinaryStorage'

CLOUDINARY_CLOUD_NAME = config('CLOUDINARY_CLOUD_NAME')
CLOUDINARY_API_KEY = config('CLOUDINARY_API_KEY')
CLOUDINARY_API_SECRET = config('CLOUDINARY_API_SECRET')

# =========================
# Seguridad básica
# =========================
SECRET_KEY = config('SECRET_KEY')
def str_to_bool(v):
    if isinstance(v, bool):
        return v
    return str(v).lower() in ('true', '1')

DEBUG = config('DJANGO_DEBUG', default=False, cast=str_to_bool)


# =========================
# ALLOWED_HOSTS y CSRF
# =========================
# Hosts permitidos para producción y local
ALLOWED_HOSTS = [host.strip() for host in config(
    'DJANGO_ALLOWED_HOSTS',
    default='localhost,127.0.0.1,.up.railway.app'
).split(',')]

# CSRF Trusted Origins (Django 4/5 necesita https en producción)
CSRF_TRUSTED_ORIGINS = config(
    'DJANGO_CSRF_TRUSTED_ORIGINS',
    default='https://*.up.railway.app,https://*.vercel.app'
).split(',')

USE_X_FORWARDED_HOST = True
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

if not DEBUG:
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SECURE = True

# =========================
# CORS
# =========================
CORS_ALLOWED_ORIGINS = [
    "http://localhost:3000",
    "http://localhost:5173",
    "https://portfolio-git-main-galo-borellis-projects.vercel.app",
    "https://portfolio-nine-xi-mz73974ekx.vercel.app",
]

# =========================
# Apps
# =========================
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'corsheaders',
    'cloudinary',
    'cloudinary_storage',
    'portfolio_app',
]

# =========================
# Middleware
# =========================
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'corsheaders.middleware.CorsMiddleware',  # debe estar arriba
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'portfolio.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'portfolio.wsgi.application'

# =========================
# Base de datos
# =========================
db_url = config('DATABASE_URL', default='').strip()

# Reparaciones comunes de URL de Railway
if db_url.endswith('/'):
    db_url += config('PGDATABASE', default='postgres')
if db_url.startswith('postgresql://:'):
    db_url = db_url.replace('postgresql://:', f"postgresql://{config('PGUSER', default='postgres')}:")

DATABASES = {
    'default': dj_database_url.config(
        default=db_url or None,
        conn_max_age=600,
        engine='django.db.backends.postgresql'
    )
}

# =========================
# Password validators
# =========================
AUTH_PASSWORD_VALIDATORS = [
    {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator'},
    {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator'},
    {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator'},
    {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator'},
]

# =========================
# i18n / tz
# =========================
LANGUAGE_CODE = 'es-ar'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_TZ = True

# =========================
# Static
# =========================
STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

# =========================
# DRF
# =========================
REST_FRAMEWORK = {
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.AllowAny',
    ],
    'DEFAULT_AUTHENTICATION_CLASSES': [],
}

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
