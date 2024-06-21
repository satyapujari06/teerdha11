from django.shortcuts import render,redirect
import requests   
from rest_framework.views import APIView
from rest_framework.response import Response
from .serialization import TaxiFareSerializer,Navigationdata,Carouseldata
from rest_framework.mixins import ListModelMixin,CreateModelMixin,RetrieveModelMixin,UpdateModelMixin,DestroyModelMixin
from rest_framework.generics import GenericAPIView
from django.http import HttpResponse

import requests
from .models import *
from rest_framework.decorators import api_view
class TaxiFareAPIView(APIView):
    def get(self, request):
        serializer = TaxiFareSerializer(data=request.query_params)
        if serializer.is_valid():
            data = serializer.validated_data
            url = "https://taxi-fare-calculator.p.rapidapi.com/search-geo"
            headers = {
                "X-RapidAPI-Key": "00dbe9f6fbmsh2e9eadc0a067640p18d2d8jsna36ab702d877",
                "X-RapidAPI-Host": "taxi-fare-calculator.p.rapidapi.com"
            }
            response = requests.get(url, headers=headers, params=data)
            return Response(response.json())
        return Response(serializer.errors, status=400)


class add_navigation_list(GenericAPIView,CreateModelMixin):
    queryset=Naviagtion_bar.objects.all()
    serializer_class=Navigationdata
    def post(self,request):
        return self.create(request)
class Update_navigation_list(GenericAPIView,UpdateModelMixin):
    queryset=Naviagtion_bar.objects.all()
    serializer_class=Navigationdata
    def put(self,request,**kwargs):
        return self.update(request, ** kwargs)
class Remove_navigation_list(GenericAPIView,DestroyModelMixin):
    queryset=Naviagtion_bar.objects.all()
    serializer_class=Navigationdata
    def delete(self,request, **kwargs):
        return self.destroy(request, **kwargs)
class Table_navigation_list(GenericAPIView,RetrieveModelMixin):
    queryset=Naviagtion_bar.objects.all()
    serializer_class=Navigationdata
    def get(self,request,**kwargs):
        return self.retrieve(request,**kwargs)
class Navigationlist(GenericAPIView,ListModelMixin):
    queryset=Naviagtion_bar.objects.all()
    serializer_class=Navigationdata
    def get(self,request):
        return self.list(request)
    

    
class add_carousel_list(GenericAPIView,CreateModelMixin):
    queryset=Home_carousel.objects.all()
    serializer_class=Carouseldata
    def post(self,request):
        return self.create(request)
class Update_carousel_list(GenericAPIView,UpdateModelMixin):
    queryset=Home_carousel.objects.all()
    serializer_class=Carouseldata
    def put(self,request,**kwargs):
        return self.update(request, ** kwargs)
class Remove_carousel_list(GenericAPIView,DestroyModelMixin):
    queryset=Home_carousel.objects.all()
    serializer_class=Carouseldata
    def delete(self,request, **kwargs):
        return self.destroy(request, **kwargs)
class Table_carousel_list(GenericAPIView,RetrieveModelMixin):
    queryset=Home_carousel.objects.all()
    serializer_class=Carouseldata
    def get(self,request,**kwargs):
        return self.retrieve(request,**kwargs)
class Carousel_list(GenericAPIView,ListModelMixin):
    queryset=Home_carousel.objects.all()
    serializer_class=Carouseldata
    def get(self,request):
        return self.list(request)
    
def Carousel_home(request):
    carousel=Home_carousel.objects.all()
    return render(request,"carousel_home.html",{'carousel':carousel})
    
def Ticketbooking(request):
    return render(request,"ticketbooking.html")
def footer(request):
    return render(request,"footer.html")
def contactus(request):
    if request.method=="POST":
    
        Name=request.POST['Name']
        Phonenumber=request.POST['Phonenumber']
        Email=request.POST['Email']
        Message=request.POST['Message']
        Status=request.POST['Status']

        msg=Contact(Name=Name,Phonenumber=Phonenumber,Email=Email,Message=Message,Status=Status)
        msg.save()
        return redirect("/contactus")
    return render(request,"contact_form.html")

    
def contact_table(request):
    contact_info=Contact.objects.all()
    return render(request,"contact_table.html",{'contact_info':contact_info})
 
def teerdha_page(request):
    return render(request,"base.html")



    ####     navbar  ####

def navbar_page(request):
    if request.method=="POST":
        photo=request.FILES.get('photo')
        title=request.POST['title']
        url=request.POST['url']
        icon=request.POST['icon']
        nav=navbar(photo=photo, title=title, url=url, icon=icon)
        nav.save()
        return HttpResponse ("record is inserted")
    return render(request,"navbar_insert.html")

def navbar_table(request):
    if request.method=="GET":
       nav=navbar.objects.all()
    return render(request,"nav.html",{'nav':nav})


##...dashboard...##

def dashboard(request):
    if request.method=="GET":
       Sidebar=dashboard_sidebar.objects.all()
       nav_item=navbar.objects.all()
    return render(request,"dashboard_templates/admin.html", {'Sidebar':Sidebar,'nav_item':nav_item} )


         
##... Flights  dashboard...##

def flightoffers_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        url=request.POST.get('url')
        dt=flights_offerscrudoperations(offer=offer, url=url)
        dt.save()
        return HttpResponse("submitted")
    return render(request,"dashboard_templates/flight_offer.html")

def flight_offertb(request):
    if request.method == "GET":
        up=flights_offerscrudoperations.objects.all()
    return render(request,"dashboard_templates/flight_offersupdate.html",{'up':up})

def flight2ndpage_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        inserturl=request.POST.get('inserturl')
        updateurl=request.POST.get('updateurl')
        ht=flights_2ndpages(offer=offer, inserturl=inserturl,updateurl=updateurl)
        ht.save()
        return HttpResponse("inserted")
    return render(request,"dashboard_templates/flight_2ndpage.html")

def flight_2ndpages(request):
    if request.method == "GET":
        upt=flights_2ndpages.objects.all()
    return render(request,"dashboard_templates/flight_2ndpagedetails.html",{'upt':upt})


def flight2ndpage_updateform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        url=request.POST.get('url')
        ht=flights_2npdpages_update(offer=offer, url=url)
        ht.save()
        return HttpResponse("inserted")
    return render(request,"dashboard_templates/flight_2ndpageupdate.html")

def flight_2ndpagesupdate(request):
    if request.method == "GET":
        upt=flights_2npdpages_update.objects.all()
    return render(request,"dashboard_templates/flight_2ndpageupdates.html",{'upt':upt})


    ###       Buses  dashboard   ######
   
def busoffers_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        url=request.POST.get('url')
        dk=buses_offerscrudoperations(offer=offer, url=url)
        dk.save()
        return HttpResponse("submitted")
    return render(request,"dashboard_templates/flight_offer.html")

def buses_offertb(request):
    if request.method == "GET":
        op=buses_offerscrudoperations.objects.all()
    return render(request,"dashboard_templates/buses_offersupdate.html",{'op':op})


def buses2ndpage_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        inserturl=request.POST.get('inserturl')
        updateurl=request.POST.get('updateurl')
        ht=buses_2ndpages(offer=offer, inserturl=inserturl,updateurl=updateurl)
        ht.save()
        return HttpResponse("inserted")
    return render(request,"dashboard_templates/buses_2ndpage.html")

def bus_2ndpages(request):
    if request.method == "GET":
        upt=buses_2ndpages.objects.all()
    return render(request,"dashboard_templates/buses_2ndpagedetails.html",{'upt':upt})


          ###       Cabs  dashboard   ######

def caboffers_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        url=request.POST.get('url')
        dk=cabs_offerscrudoperations(offer=offer, url=url)
        dk.save()
        return HttpResponse("submitted")
    return render(request,"dashboard_templates/cabs_offer.html")

def cabs_offertb(request):
    if request.method == "GET":
        opt=cabs_offerscrudoperations.objects.all()
    return render(request,"dashboard_templates/cabs_offersupdate.html",{'opt':opt})


def cabs_insert_dashboard(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        url=request.POST.get('url')
        dt=cabs_offerscrud_dashboard(offer=offer, url=url)
        dt.save()
        return HttpResponse("submitted")
    return render(request,"cabdb_offer.html")

def cabs_table_dashboard(request):
    if request.method == "GET":
        up=cabs_offerscrud_dashboard.objects.all()
    return render(request,"dashboard_templates/cab_dashboardupdate.html",{'up':up})
   

#####           2nd pages           ######

def cabs_insert_2ndpagedb(request):
    if request.method == "POST":
        offer = request.POST.get('offer')
        url_insert = request.POST.get('url_insert')
        offer_data =request.POST.get('offer_data')
        url_update = request.POST.get('url_update')
        dt = cabs_secondpage_dashboard(offer=offer, url_insert=url_insert, url_update=url_update, offer_data=offer_data)
        dt.save()
        return HttpResponse("submitted")
    return render(request, "cabdb_offer2ndpage.html")


def cabs_table_2ndpagedb(request):
    if request.method == "GET":
        up = cabs_secondpage_dashboard.objects.all()
    return render(request, "dashboard_templates/cab_dashboard2ndpage.html", {'up': up})



          ###       Hotels  dashboard   ######

def hoteloffers_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        url=request.POST.get('url')
        dk=hotels_offerscrudoperations(offer=offer, url=url)
        dk.save()
        return HttpResponse("submitted")
    return render(request,"dashboard_templates/hotels_offer.html")

def hotels_offertb(request):
    if request.method == "GET":
        pt=hotels_offerscrudoperations.objects.all()
    return render(request,"dashboard_templates/hotels_offersupdate.html",{'pt':pt})

   
def hotel2ndpage_insertform(request):
    if request.method == "POST":
        offer=request.POST.get('offer')
        inserturl=request.POST.get('inserturl')
        updateurl=request.POST.get('updateurl')
        ht=hotels_2ndpages(offer=offer, inserturl=inserturl,updateurl=updateurl)
        ht.save()
        return HttpResponse("inserted")
    return render(request,"hotel_2ndpage.html")

def hotel_2ndpages(request):
    if request.method == "GET":
        upt=hotels_2ndpages.objects.all()
    return render(request,"dashboard_templates/hotel_2ndpagedetails.html",{'upt':upt})



    #...dashboard_login...#

from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.decorators import user_passes_test

def login_view(request):
    if request.method == 'POST':
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(request, username=username, password=password)
            if user is not None and user.is_superuser:
                login(request, user)
                return redirect('/dashboard')
            else:
                form.add_error(None, 'You must be a superuser to log in here.')
    else:
        form = AuthenticationForm()
    return render(request, "dashboard_templates/login.html", {'form': form})

def dashboard(request):
    return render(request,"dashboard_templates/admin.html")

def logout(request):
    return redirect ('/login')



####  dashboard  sidebar   #####



def admin_insertform(request):
    if request.method=="POST":
        title=request.POST['title']
        url=request.POST['url']
        icon=request.POST['icon']
        category=request.POST['category']
        ad = dashboard_sidebar(title=title, url=url, icon=icon, category=category)
        ad.save()
        return HttpResponse ("record is inserted")
    return render(request,"dashboard_templates/admin_insertform.html")


                 
def sidebar_with_nav(request):
    if request.method=="GET":
        Sidebar=dashboard_sidebar.objects.all()
        nav_item=navbar.objects.all()
    return render(request,"dashboard_templates/sidebar_with_nav.html",{'Sidebar':Sidebar,'nav_item':nav_item})



