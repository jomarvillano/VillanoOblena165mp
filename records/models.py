from django.db import models
from django.utils.encoding import smart_unicode


class Category(models.Model):
	name = models.CharField(max_length = 100)
	info = models.TextField(blank=True, default = None)
	def __unicode__(self):
		return self.name

class Location(models.Model):
	name = models.CharField(max_length = 100)
	def __unicode__(self):
		return self.name	

class Agent(models.Model):
	name = models.CharField(max_length = 100)
	place = models.ForeignKey(Location, default = None, on_delete=models.SET_DEFAULT)
	race = models.CharField(max_length = 100)
	policeid = models.CharField(max_length = 100)
	def __unicode__(self):
		return self.name

class Suspect(models.Model):
	name = models.CharField(max_length = 100)
	place = models.ForeignKey(Location, default = None, on_delete=models.SET_DEFAULT)
	race = models.CharField(max_length = 100)
	def __unicode__(self):
		return self.name

class Crime(models.Model):
	classification = models.ForeignKey(Category, null=True, blank=True, default = None)
	time = models.DateTimeField('time and date')
	place = models.ForeignKey(Location, default = "None", on_delete=models.SET_DEFAULT)
	
	officer = models.ManyToManyField(Agent, null=True, blank=True, default = None)
	criminal = models.ForeignKey(Suspect, null=True, blank=True, default = None, on_delete=models.SET_NULL)
	def __unicode__(self):
		return smart_unicode(self.id)