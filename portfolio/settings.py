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
DEBUG = config('DJANGO_DEBUG', default=False, cast=bool)

# ALLOWED_HOSTS dinámico con fallback seguro para Railway + local
_allowed = config('DJANGO_ALLOWED_HOSTS', default='').strip()
if _allowed:
    ALLOWED_HOSTS = [h.strip() for h in _allowed.split(',') if h.strip()]
else:
    ALLOWED_HOSTS = [
        '127.0.0.1',
        'localhost',
        '.up.railway.app',
        'portfolio-back.railway.internal',  # host interno de Railway
    ]

# CSRF Trusted Origins (necesario en Django 4/5 cuando hay HTTPS y dominios externos)
_csrf = config('DJANGO_CSRF_TRUSTED_ORIGINS', default='').strip()
if _csrf:
    CSRF_TRUSTED_ORIGINS = [o.strip() for o in _csrf.split(',') if o.strip()]
else:
    CSRF_TRUSTED_ORIGINS = [
        'https://*.up.railway.app',
        'https://*.vercel.app',
        'https://portfolio-git-main-galo-borellis-projects.vercel.app',
        'https://portfolio-nine-xi-mz73974ekx.vercel.app',
    ]

# Respeto del proxy de Railway (evita problemas con HTTPS y redirects)
USE_X_FORWARDED_HOST = True
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

if not DEBUG:
    # Cookies seguras en producción
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
# Si necesitás cookies/sesión entre dominios, descomenta:
# CORS_ALLOW_CREDENTIALS = True

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

    # Externas
    'rest_framework',
    'corsheaders',
    'cloudinary',
    'cloudinary_storage',

    # Tu app
    'portfolio_app',
]

# =========================
# Middleware
# =========================
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    # Si instalás WhiteNoise, agregalo aquí debajo:
    # 'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'corsheaders.middleware.CorsMiddleware',  # debe estar arriba de CommonMiddleware
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
# Base de datos (sólido para Railway)
# =========================
# 1) Tomamos DATABASE_URL si existe
db_url = config('DATABASE_URL', default='').strip()

# 2) Arreglos de robustez por si llega incompleta desde Railway
#    - Si falta DBNAME (termina en "/"), lo completamos con PGDATABASE
if db_url.endswith('/'):
    db_url = db_url + config('PGDATABASE', default='')

#    - Si falta USER (url empieza con "postgresql://:"), inyectamos PGUSER (o 'postgres')
if db_url.startswith('postgresql://:'):
    db_url = db_url.replace(
        'postgresql://:',
        f"postgresql://{config('PGUSER', default='postgres')}:",
        1
    )

# 3) Construimos DATABASES con dj-database-url. Si aún no hay URL, usamos los PG* manuales.
if db_url:
    DATABASES = {
        'default': dj_database_url.config(
            default=db_url,
            conn_max_age=600,
            engine='django.db.backends.postgresql',
        )
    }
else:
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': config('PGDATABASE'),
            'USER': config('PGUSER'),
            'PASSWORD': config('PGPASSWORD'),
            'HOST': config('PGHOST'),
            'PORT': config('PGPORT', cast=int),
            'CONN_MAX_AGE': 600,
        }
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
# Si instalás WhiteNoise, podés usar:
# STORAGES = {
#     "default": {"BACKEND": "cloudinary_storage.storage.MediaCloudinaryStorage"},
#     "staticfiles": {"BACKEND": "whitenoise.storage.CompressedManifestStaticFilesStorage"},
# }

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
