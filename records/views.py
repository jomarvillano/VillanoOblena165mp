from django.shortcuts import render, render_to_response, RequestContext, HttpResponseRedirect, get_object_or_404
from .forms import *
from django.contrib import messages
from .models import *
from django.views import generic
# Create your views here.

def home(request):
	return render_to_response("home.html", locals(), context_instance=RequestContext(request))

#------------------------------------------------------------------------------------------#
 	#Edit and Add Views
#------------------------------------------------------------------------------------------#
def addindex(request):
	return render_to_response("cindex.html", locals(), context_instance=RequestContext(request))

def editindex(request):
	return render_to_response("eindex.html", locals(), context_instance=RequestContext(request))

def editagent(request, id=None):
	if id:
		agent = get_object_or_404(Agent, pk=id)
	else:
		agent = Agent()

	if request.POST:
		form = AgentForm(request.POST, instance=agent)
		if form.is_valid():
			save_it = form.save(commit=False)
			save_it.save()
			messages.success(request, "Edit successful.") if id else messages.success(request, "Successfully added.")
			return HttpResponseRedirect('')
	else:
		form = AgentForm(instance=agent)

	if id:
		context = {'title': 'Edit Agent Page',
				'form' : form,
		}
	else:
		context = {'title': 'New Agent',
				'form' : form,
		}

	return render_to_response('forms.html', context, context_instance=RequestContext(request))

def editcrime(request, id=None):
	if id:
		crime = get_object_or_404(Crime, pk=id)
	else:
		crime = Crime()

	if request.POST:
		form = CrimeForm(request.POST, instance=crime)
		if form.is_valid():
			save_it = form.save(commit=False)
			save_it.save()
			messages.success(request, "Edit successful.") if id else messages.success(request, "Successfully added.")
			return HttpResponseRedirect('')
	else:
		form = CrimeForm(instance=crime)

	if id:
		context = {'title': 'Edit Crime Entry',
				'form' : form,
		}
	else:
		context = {'title': 'New Crime Entry',
				'form' : form,
		}

	return render_to_response('forms.html', context, context_instance=RequestContext(request))

def editsuspect(request, id=None):
	if id:
		suspect = get_object_or_404(Suspect, pk=id)
	else:
		suspect = Suspect()

	if request.POST:
		form = SuspectForm(request.POST, instance=suspect)
		if form.is_valid():
			save_it = form.save(commit=False)
			save_it.save()
			messages.success(request, "Edit successful.") if id else messages.success(request, "Successfully added.")
			return HttpResponseRedirect('')
	else:
		form = SuspectForm(instance=suspect)

	if id:
		context = {'title': 'Edit Suspect Page',
				'form' : form,
		}
	else:
		context = {'title': 'New Suspect',
				'form' : form,
		}


	return render_to_response('forms.html', context, context_instance=RequestContext(request))

#------------------------------------------------------------------------------------------#
	#Read
#------------------------------------------------------------------------------------------#
class AgentList(generic.ListView):
	template_name = 'view.html'
	context_object_name = 'agent_list'
	
	def get_queryset(self):
		return Agent.objects.all().order_by('name')

class SuspectList(generic.ListView):
	template_name = 'view.html'
	context_object_name = 'agent_list'
	
	def get_queryset(self):
		return Suspect.objects.all().order_by('name')   

class CrimeList(generic.ListView):
	template_name = 'view.html'
	context_object_name = 'agent_list'
	
	def get_queryset(self):
		return Crime.objects.all().order_by('name')       

#------------------------------------------------------------------------------------------#
	#Old form views
#------------------------------------------------------------------------------------------#
# def addsuspect(request):
# 	form = newSuspectForm(request.POST or None)

# 	if form.is_valid():
# 		save_it = form.save(commit=False)
# 		save_it.save()
# 		messages.success(request, "Successfully added.")
# 		return HttpResponseRedirect('')

# 	context = {'title': 'Enter New Suspect',
# 			'form' : form,
# 	}

# 	return render_to_response("forms.html", context, context_instance=RequestContext(request))

# def addcrime(request):
# 	form = newCrimeForm(request.POST or None)

# 	if form.is_valid():
# 		save_it = form.save(commit=False)
# 		save_it.save()
# 		messages.success(request, "Successfully added.")
# 		return HttpResponseRedirect('')

# 	context = {'title': 'Report New Crime',
# 			'form' : form,
# 	}

# 	return render_to_response("forms.html", context, context_instance=RequestContext(request))

#------------------------------------------------------------------------------------------#
