from django import forms
from .models import Agent, Suspect, Crime

class newAgentForm(forms.ModelForm):
	class Meta:
		model = Agent

class newSuspectForm(forms.ModelForm):
	class Meta:
		model = Suspect

class newCrimeForm(forms.ModelForm):
	class Meta:
		model = Crime