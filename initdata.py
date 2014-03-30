from records.models import *
import random
import string
from random import randint
from datetime import date, timedelta
import calendar

categories = ['Arson', 'Assault', 'Conspiracy', 'Violence', 'Espionage', 'Fraud', 'Hostage', 'Illegal Immigration', 'Kidnapping', 'Murder', 'Robbery', 'Smuggling', 'Theft', 'Torture', 'Treason', 'Illegal Weapons', 'Hijacking', 'Illegal Spacewarp']

race = ['Vrauloq','Ruoith','Crecroth','Chant','Gnuansammue','Fuekohsh','Qeaclilseo','Strefilst','Vrigrorka','Human', 'Tiom', 'Chyv ugh','Jyt ehr','Xuabeth','Bybalh','Cloeh ekheo','Pluessysh','Tliehnixi','Vroemyhreo','Sluezzyghu']

planets = ['Pavo Dioscuri','Ursa Aegimius','Pavo Lyrae','Zeta Asteria','Nebula','Rippled Cloud','Chipea tar System','Snail Shell Star System','ET-686','SLH 20T','Delta Eridani','Alpha Chronos','Crux Sagittarius','Gamma Aegimius','Aurigae Galaxy','Cey Star System','Heroud Seye Nebula','PT-750','BPW 8R', 'Pavo Aldebaran','Borysthenis','Alpha Acallaris','Sigma Hyperbius','Andromeda Star System','Tiara Nebula','Mosaic Star System','Halo Cloud','QC-632','FZA 30B']

agentfname = ['Coqilt','Qitewth','Dezer','Duevvigh','Afylmi','Uchid','Feahmad','Slaexxhn','Ymsowth','Qeohmelte', 'Aucogh','Qlulp','Wrouvymt','Criprets','Umuhsue','Buesspu','Plohithue','Puthrke','Pieqoloe','Kraellihn', 'Jinion', 'Jalbtrius','Haeklet','Greklod','Dinir','Caghtja','Lornkern','Raostfa','Vlerg-i','Ghuld-i', 'Ronane','Shern','Landgonet','Duliyndie','Ahli','Bushon','Tortim','Tlestt','V evga','Maashim']

agentlname = ['Clearfollower','Wildsprinter','Fistflame','Nightsurge','Keencutter','Foresttree','Twoarm','Earthmight','Richgleam','Stillless','Distantstrider','Heartrage','Softcreek','Stagsky','Proudsworn','Tuskvale','Flintdancer','Lonebough','Wheatsong','Skydream','Forestflower','Stillwalker','Freeroar','Chestthorn','Freepike','Stoutbeard','Silverbend','Riverrider','Stormstrike','Mildbough']

suspectfname = ['Egoria','Aroara','Idaia','Celaeno','Amphise','Selestia','Thaleia','Pasithea','Pomedosa','Klytie','Knaucrahn','Qlywiwth','Zuotrowth','Qlygork','Kleohnsea','Frolagu','Chekukh','Trigolst','Strearest','Cluahhitho','Krukyp','Buoviks','Truawikx','Driunt','Chahelph','Staeglyhy','Ukhelh','Quaxuln','Pluexokxeo','Rygnussu','Strydrarc','Trauirc','Koegh','Qoequhx','Vlifph','Pluashssue','Vleblen','Pleiprimn','Ebbarkue','Ouvs','Nelson' ,'Greenhow','Leonard' ,'Plumb','Brennan' ,'Rochester','Calvin' ,'Vital','Bryan' ,'Winland','Justyn' ,'Delmore','Forrest' ,'Compston','Desmond' ,'Attridge','Skylar' ,'Punt','Edward' ,'Newsome','Allyssa' ,'Vasey','Mackenzie' ,'Maycroft','Lila' ,'Haston','Susana' ,'Triggs','Juliet' ,'Hounshell','Hunter' ,'Tombs','Quinn' ,'Baldock','Shawna' ,'Hubble','Jade' ,'Craven','Abril' ,'Meason']

suspectlname = ['Xezusihr','Ewozon','Scuhuidhal','Oiadahl''Bofosoizhar','Ufrusom','Ubilalur','Friaracha','Kimeustra','Ouraehs','Beberohm','Epasuhm','Stafunur','Oaaxor','Zaebeteadohr','Esnumahr','Ohygalun','Thouxuhre','Gusiasciu','Euwedach','Valezahl','Oduibuhr','Gretiozuhn','Euozon','Beeloveolahr','Acresuhr','Efhamezohn','Striera','Baeluuspie','Aepimoch','Hygemuhm','Ezinohr','Blaseasihr','Iemun','Nabazaodun','Uwhalur','Ukasabohn','Preasoru','Shediefraa','Uividihr']

def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
	return ''.join(random.choice(chars) for _ in range(size))

def create():
	i=0
	while(i<len(planets)):
		l = Location(name=planets[i])
		l.save()
		print "Added " + planets[i] + " to planet database"
		i=i+1

	i=0
	while(i<len(race)):
		r = Race(name=race[i])
		r.save()
		print "Added " + race[i] + " to race database"
		i=i+1

	i=0
	while(i<len(categories)):
		c = Category(name=categories[i])
		c.save()
		print "Added " + categories[i] + " to category database"
		i=i+1

def createagent(num=1):
	i=0
	while(i<num):
		i=i+1
		
		nam = random.choice(agentfname) + " " + random.choice(agentlname)
		loc=Location.objects.get(name=random.choice(planets))
		rac=Race.objects.get(name=random.choice(race))
		
		a = Agent(name=nam, place=(loc), race=(rac), policeid = id_generator(16))

		print "Added " + nam + " to agent database"
		a.save()

def createsuspect(num=1):
	i=0
	while(i<num):
		i=i+1
		nam = random.choice(suspectfname) + " " + random.choice(suspectlname)
		loc=Location.objects.get(name=random.choice(planets))
		rac=Race.objects.get(name=random.choice(race))
		
		s = Suspect(name=nam, place=(loc), race=(rac))

		print "Added " + nam + " to suspect database"
		s.save()

def createcrime(num=1):
	i=0
	while(i<num):
		i=i+1
		firstJan = date.today().replace(day=1, month=1) 

		clas = Category.objects.get(id=randint(1,Category.objects.count()))
		tim = str(randint(2080,2085)) +"-"+ str(randint(1,12)) +"-"+ str(randint(1,30)) + " " + str(randint(1,24))+":"+str(randint(0,59))
		loc = Location.objects.get(id=randint(1,Location.objects.count()))
		
		# agen = Agent.objects.get(id=randint(1,Agent.objects.count()))
		
		randsusp = randint(1,(Location.objects.count()))
		susp = Suspect.objects.get(id=randsusp) 
		# if randsusp<Location.objects.count() else susp = null"

		c = Crime(classification=clas, time = tim, place = loc, criminal=susp)
			
		print "Added to crime database"
		c.save()