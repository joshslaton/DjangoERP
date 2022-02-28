from django.db import models
from django.urls import reverse


""" Custom Field Types """
# Char

class CustomCharField(models.Field):
    description = 'MySQL char (not varchar)'
    def __init__(self, fixed_length=1, *args, **kwargs):
        self.fixed_length = fixed_length
        super().__init__(*args, **kwargs)

    def db_type(self, connection):
        return 'char(%s)' % self.fixed_length

    def deconstruct(self):
        name, path, args, kwargs = super().deconstruct()
        kwargs['fixed_length'] = self.fixed_length
        return name, path, args, kwargs

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

class www_users(models.Model):
    userid = models.CharField(max_length=20, primary_key=True)
    password = models.TextField()
    realname = models.CharField(max_length=35)
    customerid = models.CharField(max_length=10)
    supplierid = models.CharField(max_length=10)
    salesman = CustomCharField()
    phone = models.CharField(max_length=30)
    email = models.CharField(max_length=55, null=True)
    # defaultlocation
    # fullaccess
    # cancreatetender
    # lastvisitdate
    # branchcode
    # pagesize
    # modulesallowed
    # showdashboard
    showpagehelp = models.BooleanField()
    showfieldhelp = models.BooleanField()
    blocked = models.BooleanField()
    # displayrecordsmax
    # theme
    # language
    # pdflanguage
    # department
