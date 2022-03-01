from django.shortcuts import render
from django.http import request, HttpResponse


""" Generic """
from django.views.generic.base import TemplateView

# Context Defaults
host = 'http://localhost:8000/'
page = {
    'url': host,
    'modulename': 'Default Module Name'
    }

class HomePage(TemplateView):
    template_name = 'index.html'
