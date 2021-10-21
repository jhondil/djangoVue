from django import template

register = template.Library()

@register.filter(name='discount')
def discount(element,cupon):
    return element.get_price_after_discount(cupon)