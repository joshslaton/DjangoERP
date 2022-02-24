from django.db import models
from django.urls import reverse

class AccountGroupsModel(models.Model):
    accountgroupname = models.CharField(
        primary_key=True,
        max_length=50
        )
    # parentgroup = forms.ChoiceField(
    #     label="Parent Group",
    #     choices=[
    #         ("null", "Financial Performance"),
    #         ],
    #     disabled=True)
    # sectioninaccounts = forms.ChoiceField(
    #     label="Section in Accounts",
    #     choices=[
    #         ("null", "Disabled"),
    #         ],
    #     disabled=True)
    fsitem = models.CharField(
        max_length=20,
        choices=[
            ("Financial Peformance", "Financial Peformance"),
            ("Financial Position", "Financial Position")
            ]
        )
    sequenceinfs = models.SmallIntegerField(

        )

    def __str__(self):
        return self.accountgroupname

    def publish(self):
        self.save()

    def get_absolute_url(self):
        return reverse('accountgroups-create')
