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

	context = {'title': 'Add Agent',
			'form' : form,
	}


	return render_to_response("forms.html", context, context_instance=RequestContext(request))

def addsuspect(request):
	form = newSuspectForm(request.POST or None)

	if form.is_valid():
		save_it = form.save(commit=False)
		save_it.save()

	context = {'title': 'Add Suspect',
			'form' : form,
	}

	return render_to_response("forms.html", context, context_instance=RequestContext(request))

def addcrime(request):
	form = newCrimeForm(request.POST or None)

	if form.is_valid():
		save_it = form.save(commit=False)
		save_it.save()

	context = {'title': 'Add Crime',
			'form' : form,
	}

	return render_to_response("forms.html", context, context_instance=RequestContext(request))