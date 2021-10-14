from django.shortcuts import render

from applications.Listelement.models import Element,Category
from django.core.paginator import Paginator
from django.views.generic import (DetailView)


# Create your views here.


def index (request):
    

    search =request.GET.get('search') if request.GET.get('search') else ''
    category_id = request.GET.get('category_id')
    category_id= int(category_id) if category_id else ''

    if search:
        elements =  Element.objects.filter(title__contains=search)
    else:
        elements =  Element.objects

    if category_id:
        elements =  elements.filter(category_id=category_id)


    elements =  elements.all()
    category =  Category.objects.all()

    paginator = Paginator(elements,5)

    page_number = request.GET.get('page')
    elements_page = paginator.get_page(page_number)
    return render(request,'store/index.html', {'elements': elements_page,'category': category,'search': search, 'category_id':category_id })


class DetailsElement(DetailView):
    model = Element
    template_name='store/detalleElement.html'
    slug_field = 'url_clean'
    slug_url_kward = 'url_clean'
