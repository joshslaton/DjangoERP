from django.shortcuts import render
from django.http import request, HttpResponse

from .forms import AccountGroupsForm
from .models import AccountGroupsModel

""" Django URLs """
from django.urls import reverse_lazy
""" Generic """
from django.views.generic.list import ListView
from django.views.generic import View
""" CRUD """
from django.views.generic.edit import CreateView, UpdateView, DeleteView

"""
FormView ModelForm
https://stackoverflow.com/questions/21606739/django-update-model-with-formview-and-modelform

"""

# Context Defaults
host = 'http://localhost:8000/'
page = {
    'url': host,
    'modulename': 'Default Module Name'
    }

class GeneralLedger(View):
    """ General Ledger """
    def get(self, request, *args, **kwargs):
        return render(request, 'GeneralLedger.html')

class AccountGroupsCreate(CreateView, ListView):
    template_name = 'AccountGroupsCreate.html'
    model = AccountGroupsModel
    fields = '__all__'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['page'] = {
            'modulename': 'Account Groups',
            'url': host + 'GeneralLedger/AccountGroups/'
        }
        context['accountgroups'] = AccountGroupsModel.objects.all()
        return context

    def form_valid(self, form):
        super().form_valid(form)
        form.save()
        return reverse_lazy('accountgroups-create')


class AccountGroupsUpdate(UpdateView):
    model = AccountGroupsModel

class AccountGroupsDelete(DeleteView):
    model = AccountGroupsModel
    template_name = 'AccountGroupsDelete.html'
    success_url = reverse_lazy('accountgroups-create')

    # Understand this
    def get(self, *args, **kwargs):
        print(dir(self))
        return self.delete(*args, **kwargs)
