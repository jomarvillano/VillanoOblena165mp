from django.conf.urls import patterns, url

from records import views

urlpatterns = patterns('',
	url(r'^$', 'records.views.addindex', name='index'),
	url(r'^addagent/$', 'records.views.addagent', name='addagent'),
	url(r'^addsuspect/$', 'records.views.addsuspect', name='addcrime'),
	url(r'^addcrime/$', 'records.views.addcrime', name='addsuspect'),


    #url(r'^$', views.IndexView.as_view(), name='index'),
    #url(r'^$', 'addperson.views.home', name='home'),
)