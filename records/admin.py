from django.contrib import admin

# Register your models here.
from .models import Category, Location, Agent, Suspect, Crime, Race

class newLocationAdmin(admin.ModelAdmin):
	model = Location

class newSuspectAdmin(admin.ModelAdmin):
	model = Suspect

class newAgentAdmin(admin.ModelAdmin):
	model = Agent

class newCategoryAdmin(admin.ModelAdmin):
	model = Category

class newCrimeAdmin(admin.ModelAdmin):
	model = Crime
	list_display = ('criminal', 'classification', 'time', 'place')
	list_filter = ['classification', 'place']

class newRaceAdmin(admin.ModelAdmin):
	model = Race

admin.site.register(Location, newLocationAdmin)
admin.site.register(Suspect, newSuspectAdmin)
admin.site.register(Agent, newAgentAdmin)
admin.site.register(Category ,newCategoryAdmin)
admin.site.register(Crime, newCrimeAdmin)
admin.site.register(Race, newRaceAdmin)