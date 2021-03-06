"""
Django settings for VillanoOblena165mp project.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.6/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.6/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'k-l4jnu0c-&t%!3(w-_@y=g4g)dut332cidzaj#%832b$td!+u'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'records',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'VillanoOblena165mp.urls'

WSGI_APPLICATION = 'VillanoOblena165mp.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.6/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'cs165mp', # name of psql db on your running database server
        'HOST': 'localhost', #assuming psql is running locally
        'PORT': 5432,
        'USER': 'postgres', #admin username that you set up with no password
        'PASSWORD': 'postgres',
    }
}

# Internationalization
# https://docs.djangoproject.com/en/1.6/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.6/howto/static-files/

STATIC_URL = '/static/'
TEMPLATE_DIRS=(
    os.path.join(BASE_DIR, "static", "templates"),
)
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Don't forget to use absolute paths, not relative paths.
    os.path.join(BASE_DIR, "static", "static"),
)

if DEBUG:
    MEDIA_URL = '/media/'
    STATIC_ROOT = os.path.join(BASE_DIR, "static")
    MEDIA_ROOT = os.path.join(BASE_DIR, "static", "media")
    STATIC_DIRS = (
        os.path.join(BASE_DIR, "static", "static"),
        )
    BOOTSTRAP=(
        os.path.join(BASE_DIR, "static", "bootstrap"),
    )

# Create Crimes 
# Create Suspects 
# Create Agents 
# Create Other

# Update Crimes
# Update Suspects
# Update Agents
# Update Locations

# Delete Crimes
# Delete Suspects
# Delete Agents
# Confirmation & No Cascade

# Paginated List of Crimes 
# Paginated List of Suspects 
# Paginated List of Agents

# Searching and Filtering the List of Suspects
# Searching and Filtering the List of Agents

#       Searching and Filtering the List of Crimes - 2.5pts
# Paginated Criminal History
# Paginated List of Investigating Offcers