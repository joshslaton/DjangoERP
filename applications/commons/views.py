from django.shortcuts import render
from django.http import HttpResponseRedirect

from .forms import AccountGroupsForm
from .models import AccountGroupsModel

# Context Defaults
host = "http://localhost:8000/"
page = {
    "url": host,
    "modulename": "Default Module Name"
    }

def index(request):
    return render(request, "templates/index.html")

def AccountGroups(request):
    page["url"] = host + "AccountGroups/"
    form = AccountGroupsForm(request.POST)
    accountgroups = AccountGroupsModel.objects.all()
    if request.method == "POST":
        print(form.is_valid())
        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            return HttpResponseRedirect("/AccountGroups/")
    else:
        q = request.GET.get("EditAccountGroup", "")
        print(q)
        form = AccountGroupsForm()
    # context["form"] = form
    return render(request, "AccountGroups.html", {
        "page": page,
        "form": form,
        "accountgroups": accountgroups
        }
                  )
