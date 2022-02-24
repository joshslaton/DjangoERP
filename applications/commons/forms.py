from django import forms
from .models import AccountGroupsModel

class AccountGroupsForm(forms.ModelForm):
    class Meta(forms.ModelForm):
        model = AccountGroupsModel
        fields = "__all__"
        labels = {
            "accountgroupname": "Account Group Name",
            "fsitem": "Financial Statement Item",
            "sequenceinfs": "Sequence in FS"
        }

    def save(self, commit=True):
        accountgroups = super().save(commit=False)
        accountgroups.
        if commit:
            pass
        return ???
