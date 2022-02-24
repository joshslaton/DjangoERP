from django.urls import path, re_path
from . import views

urlpatterns = [
    path(r'', views.GeneralLedger.as_view()),
    path(r'AccountGroups/', views.AccountGroupsCreate.as_view(), name='accountgroups-create'),
    re_path(r'AccountGroups/Delete/(?P<pk>[\w]+)/$', views.AccountGroupsDelete.as_view(), name='accoungroups-delete'),
    ]
