from django.urls import path, re_path
from .GeneralLedger import views as glviews
from .Setup import views as sviews
from . import views

urlpatterns = [
    path(r'', views.HomePage.as_view()),

    path(r'GeneralLedger/', glviews.GeneralLedger.as_view()),
    path(r'GeneralLedger/AccountGroups/', glviews.AccountGroupsCreate.as_view(), name='accountgroups-create'),
    re_path(r'GeneralLedger/AccountGroups/Delete/(?P<pk>[\w]+)/$', glviews.AccountGroupsDelete.as_view(), name='accoungroups-delete'),
    re_path(r'GeneralLedger/AccountGroups/Edit/(?P<pk>[\w]+)/$', glviews.AccountGroupsUpdate.as_view(), name='accoungroups-update'),
    #

    # SETUP
    path(r'Setup/', sviews.Setup.as_view()),
    path(
         r'Setup/UserMaintenance/',
         sviews.UserMaintenanceCreate.as_view(),
         name='usermaintenance-create'
         ),
    ]
