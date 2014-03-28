from django.conf.urls import patterns, url

from records import views

urlpatterns = patterns('',
#------------------------------------------------------------------------------------------#
	#INDEXES
#------------------------------------------------------------------------------------------#	
	url(r'^create/$', 'records.views.addindex', name='addindex'),
	url(r'^edit/$', 'records.views.editindex', name='editindex'),
	url(r'^view/$', 'records.views.viewindex', name='viewindex'),
	url(r'^delete/$', 'records.views.deleteindex', name='deleteindex'),
#------------------------------------------------------------------------------------------#
	#CREATE AND EDIT FORMS
#------------------------------------------------------------------------------------------#
	url(r'^agent/$', 'records.views.editagent', name='agent'),
	url(r'^agent/(?P<id>\d+)/$', 'records.views.editagent', name='editagent'),

	url(r'^suspect/$', 'records.views.editsuspect', name='suspect'),
	url(r'^suspect/(?P<id>\d+)/$', 'records.views.editsuspect', name='editsuspect'),

	url(r'^crime/$', 'records.views.editcrime', name='crime'),
	url(r'^crime/(?P<id>\d+)/$', 'records.views.editcrime', name='editcrime'),

	url(r'^race/$', 'records.views.editrace', name='race'),
	url(r'^race/(?P<id>\d+)/$', 'records.views.editrace', name='editrace'),

	url(r'^location/(?P<id>\d+)/$', 'records.views.editlocation', name='editlocation'),
#------------------------------------------------------------------------------------------#
	#DELETE
#------------------------------------------------------------------------------------------#
	url(r'^agent/(?P<id>\d+)/delete/$', 'records.views.deleteagent', name='deleteagent'),
	url(r'^suspect/(?P<id>\d+)/delete/$', 'records.views.deletesuspect', name='deletesuspect'),
	url(r'^crime/(?P<id>\d+)/delete/$', 'records.views.deletecrime', name='deletecrime'),

	url(r'^agent/(?P<id>\d+)/confirm/$', 'records.views.confirmagent', name='confirmagent'),
	url(r'^suspect/(?P<id>\d+)/confirm/$', 'records.views.confirmsuspect', name='confirmsuspect'),
	url(r'^crime/(?P<id>\d+)/confirm/$', 'records.views.confirmcrime', name='confirmcrime'),
#------------------------------------------------------------------------------------------#
	url(r'^list/agents$', views.AgentList.as_view(), name='listagent'),
	url(r'^list/suspects$', views.SuspectList.as_view(), name='listsuspect'),
	url(r'^list/crime$', views.CrimeList.as_view(), name='listcrime'),	

	url(r'^list/agentsedit$', views.AgentListEdit.as_view(), name='listagentedit'),
	url(r'^list/suspectsedit$', views.SuspectListEdit.as_view(), name='listsuspectedit'),
	url(r'^list/crimeedit$', views.CrimeListEdit.as_view(), name='listcrimeedit'),
	url(r'^list/locationedit$', views.LocationListEdit.as_view(), name='listlocationedit'),

	url(r'^list/agentsdelete$', views.AgentListDelete.as_view(), name='listagentdelete'),
	url(r'^list/suspectsdelete$', views.SuspectListDelete.as_view(), name='listsuspectdelete'),
	url(r'^list/crimedelete$', views.CrimeListDelete.as_view(), name='listcrimedelete'),

	# url(r'^location/$', LocationList.as_view(), name='locations'),
	# url(r'^location/(?P<donation_id>\d+)/$', validate_donation, name='validate'),

    # url(r'^$', views.IndexView.as_view(), name='index'),
    # url(r'^$', 'addperson.views.home', name='home'),
)