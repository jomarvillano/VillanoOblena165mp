from django.shortcuts import render, render_to_response, RequestContext
from .forms import newAgentForm, newSuspectForm, newCrimeForm
# Create your views here.

def home(request):
	return render_to_response("base.html", locals(), context_instance=RequestContext(request))

def addagent(request):
	form = newAgentForm(request.POST or None)

	if form.is_valid():
		save_it = form.save(commit=False)
		save_it.save()

	return render_to_response("forms.html", locals(), context_instance=RequestContext(request))

def addsuspect(request):
	form = newSuspectForm(request.POST or None)

	if form.is_valid():
		save_it = form.save(commit=False)
		save_it.save()

	return render_to_response("forms.html", locals(), context_instance=RequestContext(request))

def addcrime(request):
	form = newCrimeForm(request.POST or None)

	if form.is_valid():
		save_it = form.save(commit=False)
		save_it.save()

	return render_to_response("forms.html", locals(), context_instance=RequestContext(request))