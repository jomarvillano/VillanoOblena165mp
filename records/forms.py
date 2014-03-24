from django import forms
from django.views.generic.edit import UpdateView
from .models import Agent, Suspect, Crime, Location

class AgentForm(forms.ModelForm):
	class Meta:
		model = Agent

class SuspectForm(forms.ModelForm):
	class Meta:
		model = Suspect

class CrimeForm(forms.ModelForm):
	class Meta:
		model = Crime