from django.shortcuts import render, render_to_response, RequestContext, HttpResponseRedirect, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib import messages
from django.views import generic
from django.db.models import Q

from .forms import *
from .models import *
# Create your views here.

#------------------------------------------------------------------------------------------#
 	#Index
#------------------------------------------------------------------------------------------#
def home(request):
	return render_to_response("home.html", locals(), context_instance=RequestContext(request))

def addindex(request):
	context = {
		'type' : 'add'
	}
	return render_to_response("index.html", context, context_instance=RequestContext(request))

def editindex(request):
	context = {
		'type' : 'edit'
	}
	return render_to_response("index.html", context, context_instance=RequestContext(request))

def viewindex(request):
	context = {
		'type' : 'view'
	}
	return render_to_response("index.html", context, context_instance=RequestContext(request))

def deleteindex(request):
	context = {
		'type' : 'delete'
	}
	return render_to_response("index.html", context, context_instance=RequestContext(request))

#------------------------------------------------------------------------------------------#
 	#Edit and Add Specific
#------------------------------------------------------------------------------------------#
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
			form.save_m2m()
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

def editrace(request, id=None):
	if id:
		race = get_object_or_404(Race, pk=id)
	else:
		race = Race()

	if request.POST:
		form = RaceForm(request.POST, instance=race)
		if form.is_valid():
			save_it = form.save(commit=False)
			save_it.save()
			messages.success(request, "Edit successful.") if id else messages.success(request, "Successfully added.")
			return HttpResponseRedirect('')
	else:
		form = RaceForm(instance=race)

	if id:
		context = {'title': 'Edit Race',
				'form' : form,
		}
	else:
		context = {'title': 'New Race',
				'form' : form,
		}


	return render_to_response('forms.html', context, context_instance=RequestContext(request))

def editlocation(request, id=None):
	if id:
		location = get_object_or_404(Location, pk=id)
	else:
		location = Location()

	if request.POST:
		form = LocationForm(request.POST, instance=location)
		if form.is_valid():
			save_it = form.save(commit=False)
			save_it.save()
			messages.success(request, "Edit successful.") if id else messages.success(request, "Successfully added.")
			return HttpResponseRedirect('')
	else:
		form = LocationForm(instance=location)

	if id:
		context = {'title': 'Edit Location',
				'form' : form,
		}
	else:
		context = {'title': 'New Location',
				'form' : form,
		}


	return render_to_response('forms.html', context, context_instance=RequestContext(request))

#------------------------------------------------------------------------------------------#
 	#Delete Specific
#------------------------------------------------------------------------------------------#
def confirmagent(request, id=None):
	if id:
		agent = get_object_or_404(Agent, pk=id)

	context={
		'name': agent.name,
		'id' : agent.id,
		'type' : 'agent'
	}

	return render_to_response('confirm.html', context, context_instance=RequestContext(request))

def confirmsuspect(request, id=None):
	if id:
		suspect = get_object_or_404(Suspect, pk=id)

	context={
		'name': suspect.name,
		'id' : suspect.id,
		'type' : 'suspect'
	}

	return render_to_response('confirm.html', context, context_instance=RequestContext(request))	

def confirmcrime(request, id=None):

	if id:
		crime = get_object_or_404(Crime, pk=id)

	context={
		'name': crime.classification,
		'id' : crime.id,
		'date' : crime.time,
		'type' : 'crime'
	}

	return render_to_response('confirm.html', context, context_instance=RequestContext(request))		

#------------------------------------------------------------------------------------------#

def deleteagent(request, id=None):
	if id:
		agent = get_object_or_404(Agent, pk=id)

	agent.delete()
	context = {
		'type' : 'delete'
	}

	return render_to_response('index.html', context, context_instance=RequestContext(request))

def deletesuspect(request, id=None):
	if id:
		suspect = get_object_or_404(Suspect, pk=id)

	suspect.delete()
	context = {
		'type' : 'delete'
	}

	return render_to_response('index.html', context, context_instance=RequestContext(request))

def deletecrime(request, id=None):
	if id:
		crime = get_object_or_404(Crime, pk=id)

	crime.delete()
	context = {
		'type' : 'delete'
	}

	return render_to_response('index.html', context, context_instance=RequestContext(request))

#------------------------------------------------------------------------------------------#
	#Read, Edit, Delete Listing (Optimize!)
#------------------------------------------------------------------------------------------#

class AgentListEdit(generic.ListView):
	template_name = 'edit.html'
	context_object_name = 'agent_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Agent.objects.all().order_by('name')

class SuspectListEdit(generic.ListView):
	template_name = 'edit.html'
	context_object_name = 'suspect_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Suspect.objects.all().order_by('name')   

class CrimeListEdit(generic.ListView):
	template_name = 'edit.html'
	context_object_name = 'crime_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Crime.objects.all().order_by('-time')

class LocationListEdit(generic.ListView):
	template_name = 'edit.html'
	context_object_name = 'location_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Location.objects.all().order_by('name')
#------------------------------------------------------------------------------------------#

class AgentList(generic.ListView):
	template_name = 'view.html'
	context_object_name = 'agent_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Agent.objects.all().order_by('name')

class SuspectList(generic.ListView):
	template_name = 'view.html'
	context_object_name = 'suspect_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Suspect.objects.all().order_by('name')   

class CrimeList(generic.ListView):
	template_name = 'view.html'
	context_object_name = 'crime_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Crime.objects.all().order_by('-time')

#------------------------------------------------------------------------------------------#

class AgentListDelete(generic.ListView):
	template_name = 'delete.html'
	context_object_name = 'agent_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Agent.objects.all().order_by('name')

class SuspectListDelete(generic.ListView):
	template_name = 'delete.html'
	context_object_name = 'suspect_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Suspect.objects.all().order_by('name')   

class CrimeListDelete(generic.ListView):
	template_name = 'delete.html'
	context_object_name = 'crime_list'
	paginate_by = 10 
	
	def get_queryset(self):
		return Crime.objects.all().order_by('-time')

#------------------------------------------------------------------------------------------#
	#Search
#------------------------------------------------------------------------------------------#
#classess are: bookmark,link and user

def search_agent(request):
	form = SearchForm()
	agents = []
	show_results=False
	query=""

	if request.GET.has_key('query'):
		show_results=True
		query=request.GET['query'].strip()
		if query:
			form=SearchForm({'query': query})
			agents = \
				Agent.objects.filter(Q(name__icontains=query))

    
	paginator = Paginator(agents, 10)
	page = request.GET.get('page')
	try:
		agents = paginator.page(page)
	except PageNotAnInteger:
		agents = paginator.page(1)
	except EmptyPage:
		agents = paginator.page(paginator.num_pages)


	variables = RequestContext(request, 
		{	'form': form,
			'agent_list': agents,
			'show_results': show_results,
			'is_paginated': True,
			'query': query,
		}
	)

	return render_to_response('search.html', variables)

def search_agent_loc(request):
	form = SearchForm()
	agents = []
	show_results=False
	query=""

	if request.GET.has_key('query'):
		show_results=True
		query=request.GET['query'].strip()
		if query:
			form=SearchForm({'query': query})
			agents = \
				Agent.objects.filter(place__name__startswith=query)

    
	paginator = Paginator(agents, 10)
	page = request.GET.get('page')
	try:
		agents = paginator.page(page)
	except PageNotAnInteger:
		agents = paginator.page(1)
	except EmptyPage:
		agents = paginator.page(paginator.num_pages)


	variables = RequestContext(request, 
		{	'form': form,
			'agent_list': agents,
			'show_results': show_results,
			'is_paginated': True,
			'query': query,
		}
	)

	return render_to_response('search.html', variables)

def search_suspect(request):
	form = SearchForm()
	suspects = []
	show_results=False
	query=""

	if request.GET.has_key('query'):
		show_results=True
		query=request.GET['query'].strip()
		if query:
			form=SearchForm({'query': query})
			suspects = \
				Suspect.objects.filter(Q(name__icontains=query))

    
	paginator = Paginator(suspects, 10)
	page = request.GET.get('page')
	try:
		suspects = paginator.page(page)
	except PageNotAnInteger:
		suspects = paginator.page(1)
	except EmptyPage:
		suspects = paginator.page(paginator.num_pages)


	variables = RequestContext(request, 
		{	'form': form,
			'suspect_list': suspects,
			'show_results': show_results,
			'is_paginated': True,
			'query': query,
		}
	)

	return render_to_response('search.html', variables)

def search_suspect_loc(request):
	form = SearchForm()
	agents = []
	show_results=False
	query=""

	if request.GET.has_key('query'):
		show_results=True
		query=request.GET['query'].strip()
		if query:
			form=SearchForm({'query': query})
			agents = \
				Suspect.objects.filter(place__name__startswith=query)

    
	paginator = Paginator(agents, 10)
	page = request.GET.get('page')
	try:
		agents = paginator.page(page)
	except PageNotAnInteger:
		agents = paginator.page(1)
	except EmptyPage:
		agents = paginator.page(paginator.num_pages)


	variables = RequestContext(request, 
		{	'form': form,
			'suspect_list': agents,
			'show_results': show_results,
			'is_paginated': True,
			'query': query,
		}
	)

	return render_to_response('search.html', variables)

def search_crime(request):
	form = SearchForm()
	agents = []
	show_results=False
	query=""

	if request.GET.has_key('query'):
		show_results=True
		query=request.GET['query'].strip()
		if query:
			form=SearchForm({'query': query})
			agents = \
				Crime.objects.filter(classification__name__startswith=query).order_by('-time')

    
	paginator = Paginator(agents, 10)
	page = request.GET.get('page')
	try:
		agents = paginator.page(page)
	except PageNotAnInteger:
		agents = paginator.page(1)
	except EmptyPage:
		agents = paginator.page(paginator.num_pages)

	location = Location.objects.all().order_by('name')

	variables = RequestContext(request, 
		{	'form': form,
			'crime_list': agents,
			'show_results': show_results,
			'is_paginated': True,
			'query': query,
			'location_list':location,
		}
	)

	return render_to_response('search.html', variables)

#------------------------------------------------------------------------------------------#
	#Criminal Record
#------------------------------------------------------------------------------------------#

def viewrecord(request, id=None):
	if id:
		suspect = get_object_or_404(Suspect, pk=id)

	crime_list = \
		Crime.objects.filter(criminal=suspect).order_by('-time')

	paginator = Paginator(crime_list, 5)
	page = request.GET.get('page')
	try:
		crime_list = paginator.page(page)
	except PageNotAnInteger:
		crime_list = paginator.page(1)
	except EmptyPage:
		crime_list = paginator.page(paginator.num_pages)

	variables = RequestContext(request, 
		{	
			'crime_list': crime_list,
			'title': suspect.name,
			'paginator': True,
		}
	)

	return render_to_response('view.html', variables)


def viewagents(request, id=None):
	if id:
		crime = Crime.objects.get(pk=id)

	agent_list = \
		crime.officer.all().order_by('name')

	paginator = Paginator(agent_list, 5)
	page = request.GET.get('page')
	try:
		agent_list = paginator.page(page)
	except PageNotAnInteger:
		agent_list = paginator.page(1)
	except EmptyPage:
		agent_list = paginator.page(paginator.num_pages)

	variables = RequestContext(request, 
		{	
			'title': crime.classification,
			'date' : crime.time,
			'agent_list': agent_list,
			'paginator': True,
		}
	)

	return render_to_response('view.html', variables)