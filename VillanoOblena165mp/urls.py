from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'VillanoOblena165mp.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^records/', include('records.urls', namespace="records")),

	# url(r'^records/$', 'records.views.addagent', name='index'),
	# url(r'^records/addagent/$', 'records.views.addagent', name='addagent'),
	# url(r'^records/addsuspect/$', 'records.views.addsuspect', name='addcrime'),
	# url(r'^records/addcrime/$', 'records.views.addcrime', name='addsuspect'),

)
