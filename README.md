Criminal Database web application using Django and PostgreSQL

This is a course requirement of
CS 165 Database Systems
of the Department of Computer Science, College of Engineering,
UP Diliman Quezon City, Philippines.

SPACE POLIZ
165 MP
Villano, Joshua
Oblena Heinrich

Requirements:
1. Django-Postgres runnable environment
2. configure the DATABASES section found in VillanoOblena165mp\VillanoOblena165mp\settings.py

To populate database:
Option 1:(DO THIS FIRST)
1. open cmd to the dir containing manage.py (e.g VillanoOblena165mp\manage.py)
2. run python manage.py syncdb , either create a superuser or not.
3. run python manage.py loaddata crime_fixture.json
4. you should see success messages
5. if error persists go to Option 2.
6. if not, check if the database has data.

Option 2:
1. open cmd to the dir containing manage.py (e.g VillanoOblena165mp\manage.py)
2. run python manage.py syncdb , create a superuser


TO RUN (note: POPULATE FIRST):
1. open cmd to the dir containing manage.py (e.g VillanoOblena165mp\manage.py)
2. run python manage.py runserver
3. open in browser: 127.0.0.1:8000/
