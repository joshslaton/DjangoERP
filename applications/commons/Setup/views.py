""" Models """
from .models import www_users
from .forms import www_usersform
""" Generic """
from django.views.generic.base import TemplateView
""" Class-based """
from django.views.generic.edit import CreateView

# Context Defaults
host = 'http://localhost:8000/'
page = {
    'url': host,
    'modulename': 'Default Module Name'
    }

class Setup(TemplateView):
    template_name = 'Setup.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['page'] = {
            'modulename': 'User Maintenance',
            'url': host + 'Setup/UserMaintenance/'
        }
        return context

class UserMaintenanceCreate(CreateView):
    template_name = "Setup/UserMaintenanceCreate.html"
    model = www_users
    form_class = www_usersform

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['page'] = {
            'modulename': 'User Maintenance',
            # 'url': host + 'Setup/UserMaintenance/'
        }
        context['www_users'] = www_users.objects.all()
        return context
