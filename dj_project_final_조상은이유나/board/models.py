from django.db import models

# Create your models here.

class Board(models.Model):
    """
        title: 제목
        content: 내용
        author: 작성자
    """
    board_title = models.CharField(max_length=100)
    board_content = models.CharField(max_length=500)
    board_author = models.CharField(max_length=100)
    # board_date = models.DateTimeField()

class SBoard(models.Model):
    """
        title: 제목
        content: 내용
        author: 작성자
    """
    s_board_title = models.CharField(max_length=100)
    s_board_content = models.CharField(max_length=500)
    s_board_author = models.CharField(max_length=100)
    # board_date = models.DateTimeField()