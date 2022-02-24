from django.urls import path
from django.shortcuts import render
from django.http import request

context = {
    'page': {
        'url': 'http://localhost:8000',
    }
}

def index(request):
    return render(request, 'index.html', context)
