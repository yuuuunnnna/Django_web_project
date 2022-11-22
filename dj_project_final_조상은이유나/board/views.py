from django.shortcuts import render
from .models import Board,SBoard
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.utils import timezone
from django.urls import reverse

# Create your views here.


def board_main(request):

    all_boards = Board.objects.all().order_by("-id")[:5]
    all_sboards = SBoard.objects.all()
    return render(request, 'board/board_main.html', { 'board_list':all_boards, 's_board_list':all_sboards})

def index(request): #게시물 목록
    all_boards = Board.objects.all()
    return render(request, 'board/index.html', { 'board_list':all_boards})

def detail(request, board_id): #상세페이지 이동
    board = Board.objects.get(id=board_id)
    return render(request, 'board/detail.html', {'board': board})

def write(request): #글쓰기 페이지
    return render(request, 'board/write.html')

def write_board(request): #게시글 등록
    b = Board(
        board_title=request.POST['board_title'],
        board_content=request.POST['board_content'],
        board_author=request.POST['board_author']
    )
    b.save()
    return HttpResponseRedirect(reverse('board:index'))



    # 스터디

def index_s(request): #게시물 목록
    all_sboards = SBoard.objects.all()
    return render(request, 'board/index_s.html', { 'sboard_list':all_sboards})

def detail_s(request, s_board_id): #상세페이지 이동
    s_board = SBoard.objects.get(id=s_board_id)
    return render(request, 'board/detail_s.html', {'s_board': s_board})

def write_s(request): #글쓰기 페이지
    return render(request, 'board/write_s.html')

def write_board_s(request): #게시글 등록
    s = SBoard(
        s_board_title=request.POST['s_board_title'],
        s_board_content=request.POST['s_board_content'],
        s_board_author=request.POST['s_board_author']
    )
    s.save()
    return HttpResponseRedirect(reverse('board:index_s'))