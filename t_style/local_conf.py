from django.conf import settings

# SECURITY WARNING: keep the secret key used in production secret!
# ADD SECRET_KEY
SECRET_KEY = "..."

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ["*"]

INSTALLED_APPS = settings.INSTALLED_APPS + [
    "debug_toolbar",
    "django_extensions",
]

MIDDLEWARE = settings.MIDDLEWARE + [
    "debug_toolbar.middleware.DebugToolbarMiddleware",
]

INTERNAL_IPS = ["127.0.0.1"]
