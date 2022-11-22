from django.urls import path
from django.contrib.auth import views as auth_views
from . import views
app_name = 'member'
urlpatterns = [
    
    path('signup/custom/', views.signup_custom, name='signup_custom'),
    path('login/custom/', views.login_custom, name='login_custom'),
    path('logout/custom/', views.logout_custom, name='logout_custom'),
]