from django.contrib import admin
from django.urls import include, path
from .views import index
from django.conf import settings

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", index, name="index"),
] + (
    # Add debugging mode urls here
    [
        path("__debug__/", include("debug_toolbar.urls")),
    ]
    if settings.DEBUG
    else []
)
