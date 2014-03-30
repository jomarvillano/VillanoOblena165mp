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
1. open cmd and cd to the dir containing manage.py (e.g VillanoOblena165mp\manage.py)
2. run python manage.py syncdb , either create a superuser or not.
3. run python manage.py loaddata crime_fixture.json
4. you should see Installed 1299 object(s) from 1 fixture(s) [may not be exact, but no error means good. go to 4.5]
    4.5. DB is pre-loaded, skip to RUN
5. if a bunch of error comes instead (e.g. far from 4.) go to Option 2.

Option 2:
1. open cmd and cd to the dir containing manage.py (e.g VillanoOblena165mp\manage.py)
2. run python manage.py syncdb , create a superuser
3. run python manage.py shell
4. this will start a python interpreter, type >>  from initdata import *
5. run the ff commands(IN EXACT ORDER):
    6. create()
    7. createagent(30)      #replace 30 with desired number of agents
    8. createsuspect(30)    #replace 30 with "  " of suspects
    9. createcrime(50)      #replace 50 with desired number of agents
    10. NOTE: createcrime() may frequently return invalid date/time errors. ignore and keep re-running createcrime()   until number of crimes desired have been reached
11. DB is pre-loaded, go to RUN

TO RUN (note: POPULATE FIRST):
1. open cmd to the dir containing manage.py (e.g VillanoOblena165mp\manage.py)
2. run python manage.py runserver
3. open in browser: 127.0.0.1:8000/
