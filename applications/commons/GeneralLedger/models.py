from django.db import models
from django.urls import reverse

""" Regular Field Types """
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
            ],
        default='Financial Position'
        )
    sequenceinfs = models.SmallIntegerField()

    def __str__(self):
        return self.accountgroupname

    def get_absolute_url(self):
        return reverse('accountgroups-create')

class ChartmasterModel(models.Model):
    accountcode = models.PositiveSmallIntegerField(
        primary_key=True
    )
    accountname = models.CharField(
        max_length = 50
    )
    accountgroupname = models.ForeignKey(AccountGroupsModel, on_delete=models.CASCADE)
    cashflowsactivity = models.SmallIntegerField(
        default=-1
    )

    def __str__(self):
        return self.accountname
