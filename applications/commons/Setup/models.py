from django.db import models

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

class www_users(models.Model):
    userid = models.CharField(max_length=20, primary_key=True)
    password = models.CharField(max_length=64)
    realname = models.CharField(max_length=35)
    customerid = models.CharField(max_length=10, blank=True)
    supplierid = models.CharField(max_length=10, blank=True)
    # salesman = CustomCharField()
    phone = models.CharField(max_length=30, blank=True) # can be comma separated
    email = models.CharField(max_length=55, blank=True)
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

    def get_absolute_url(self):
        return reverse('usermaintenance-create')
