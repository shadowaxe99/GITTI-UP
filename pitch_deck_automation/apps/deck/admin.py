
from django.contrib import admin
from .models import Deck, Slide, Element

# Register your models here.

class SlideInline(admin.TabularInline):
    model = Slide
    extra = 1

class ElementInline(admin.TabularInline):
    model = Element
    extra = 1

class DeckAdmin(admin.ModelAdmin):
    inlines = [SlideInline, ElementInline]

admin.site.register(Deck, DeckAdmin)
