from .models import Member
from django.utils import timezone
from django.http import HttpResponse
from django.shortcuts import render,redirect

def signup_custom(request):
    if request.method == 'POST':
        user_id = request.POST.get('user_id')
        user_pw = request.POST.get('user_pw')
        user_name = request.POST.get('user_name')
        user_sch = request.POST.get('user_sch')
        m = Member(
        user_id=user_id, user_pw=user_pw, user_name=user_name)
        m.date_joined = timezone.now()
        m.save()

        return render(request, 'member/login_custom.html')
    else:
        return render(request, 'member/signup_custom.html')


def login_custom(request):
    if request.method == 'POST':
        user_id = request.POST.get('user_id')
        user_pw = request.POST.get('user_pw')

        try:
            m = Member.objects.get(user_id=user_id, user_pw=user_pw)
        except Member.DoesNotExist as e:
            return HttpResponse('로그인 실패')
        else:
            request.session['user_id'] = m.user_id
            request.session['user_name'] = m.user_name
        return redirect('board:board_main')

    else:
        return render(request, 'member/login_custom.html')


def logout_custom(request):
    del request.session['user_id'] # 개별 삭제
    del request.session['user_name'] # 개별 삭제
        
    request.session.flush() # 전체 삭제
    
    return redirect('member:login_custom')
