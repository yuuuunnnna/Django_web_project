from django.urls import path
from django.contrib.auth import views as auth_views
from . import views
app_name = 'board'
urlpatterns = [
    
    
    
    path('main/', views.board_main, name='board_main'),

    path('', views.index, name='index'),
    path('<int:board_id>/', views.detail, name='detail'),
    path('write/', views.write, name='write'),
    path('write/write_board', views.write_board, name='write_board'),

    path('study', views.index_s, name='index_s'),
    path('<int:board_id>/', views.detail, name='detail'),
    path('study/write_s/', views.write_s, name='write_s'),
    path('study/write/write_board', views.write_board_s, name='write_board_s'),

]
