from django.conf.urls import patterns, url

from records import views

urlpatterns = patterns('',
	url(r'^create/$', 'records.views.addindex', name='addindex'),
	url(r'^edit/$', 'records.views.editindex', name='editindex'),

	url(r'^agent/$', 'records.views.editagent', name='agent'),
	url(r'^agent/(?P<id>\d+)/$', 'records.views.editagent', name='editagent'),

	url(r'^suspect/$', 'records.views.editsuspect', name='suspect'),
	url(r'^suspect/(?P<id>\d+)/$', 'records.views.editsuspect', name='editsuspect'),

	url(r'^crime/$', 'records.views.editcrime', name='crime'),
	url(r'^crime/(?P<id>\d+)/$', 'records.views.editcrime', name='editcrime'),


	url(r'^list/agents$', views.AgentList.as_view(), name='listagent'),
	url(r'^list/suspects$', views.SuspectList.as_view(), name='listsuspect'),
	url(r'^list/crime$', views.CrimeList.as_view(), name='listcrime'),
	# url(r'^location/$', LocationList.as_view(), name='locations'),
	# url(r'^location/(?P<donation_id>\d+)/$', validate_donation, name='validate'),

    # url(r'^$', views.IndexView.as_view(), name='index'),
    # url(r'^$', 'addperson.views.home', name='home'),
)