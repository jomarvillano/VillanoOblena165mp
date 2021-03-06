from django import forms
from django.views.generic.edit import UpdateView
from .models import Agent, Suspect, Crime, Location, Race

class AgentForm(forms.ModelForm):
	class Meta:
		model = Agent

class SuspectForm(forms.ModelForm):
	class Meta:
		model = Suspect

class CrimeForm(forms.ModelForm):
	class Meta:
		model = Crime

class RaceForm(forms.ModelForm):
	class Meta:
		model = Race

class LocationForm(forms.ModelForm):
	class Meta:
		model = Location

class SearchForm(forms.Form):
	query = forms.CharField(
		label='Search',
		widget=forms.TextInput(attrs={'size': 32})
		)