from dataclasses import fields
from django import forms
from .models import *

class EquipoForm(forms.ModelForm):
    class Meta:
        model=Equipo
        fields='__all__'