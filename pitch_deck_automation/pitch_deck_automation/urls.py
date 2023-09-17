
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('admin/', admin.site.urls),
    path('deck/', include('apps.deck.urls')),
    path('user/', include('apps.user.urls')),
]
