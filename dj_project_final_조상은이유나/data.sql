-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.7-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- dj 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS 'dj' /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE 'dj';

-- 테이블 dj.board_board 구조 내보내기
CREATE TABLE IF NOT EXISTS board_board (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  board_title varchar(100) NOT NULL,
  board_content varchar(500) NOT NULL,
  board_author varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 dj.board_board:~6 rows (대략적) 내보내기
DELETE FROM board_board;
/*!40000 ALTER TABLE 'board_board' DISABLE KEYS */;
INSERT INTO board_board (id, board_title, board_content, board_author) VALUES
	(23, '【 디지털스마트부산 】 교육과정 안내', '교육 개요\r\n\r\n일시 : 7월 25일 ~ 11월 23일\r\n\r\n일정 : 오리엔테이션 / 이론 및 실무교육 / 기초 프로젝트 / 취업캠프 / 지역산업 기반 심화 프로젝트', 'admin'),
	(24, '【 디지털스마트부산 】 취업지원 안내', '취업지원 프로세스\r\n개인별 수립한 진로계획을 바탕으로 취업 역략 교육, 진로 및 취업 멘토링을 통해 SW 개발자가에게 필요한 역량을 배양하고 취업을 준비할 수 있습니다.\r\n\r\n취업지원 서비스\r\n개인별 수립한 진로계획을 바탕으로 취업약량 교육, 진로 및 취업 멘토링을 통해 SW 개발자에게 필요한 역량을 배양하고 취업을 준비할 수 있습니다.', 'admin'),
	(25, '【 디지털스마트부산 】 생활수칙 안내', '기본 예의 지키기\r\n - 서로 인사하기\r\n - 수업에 집중하기\r\n\r\n시간 엄수하기\r\n - 교육시간 지키기\r\n - 제출시간 지키기\r\n\r\n안전 규칙 지키기\r\n - 실내 마스크 착용하기\r\n - 안전 수칙 지키기', 'admin'),
	(26, ' 【 디지털스마트부산 】 동의대_1차 프로젝트 학습계획서', '프로젝트 명\r\nE-나라지표 컨테이너 화물 처리 현황을 활용한 부산항 화물 예측\r\n\r\n학습 목표\r\n부산항 관련 물류 데이터에서 머신러닝을 수행하여 보고서를 작성한다.\r\n\r\n세부 내용\r\n1. 항만관련 데이터를 탐색하는 기회를 갖는다.\r\n - 공공데이터 포털, E-나라지표 등 다양한 국가 데이터 사이트를 활용하는 학습을 수행한다. \r\n2. 확보한 데이터에서 유의미한 미래 예측 가능성을 머신러닝한다.\r\n - 회귀 또는 분류 등의 알고리즘이 적용 가능한 데이터 세트를 찾아내는 학습을 수행한다.\r\n3. 머신 러닝의 예측 결과로 보고서를 작성할 수 있도록 한다.\r\n - 머신 러닝 결과를 어떻게 적용할지 보고서를 작성하는 학습을 수행한다.', 'admin'),
	(27, '【 디지털스마트부산 】 현직개발자와 함께하는 \'테크토크\' 개최', '일시 : 8월 12일(금)\r\n\r\n장소 : 동의대학교 도서관 704호\r\n\r\n내용 : 카카오뱅크 개발자 테크 세미나 > 테크토크\r\n\r\n강사 : 카카오뱅크 개발자 및 현직 개발자', 'admin'),
	(28, '프로젝트 주제', '한달 동안 진행하는 프로젝트 주제가 궁금해요~!~!\r\n따로 정해진 가이드라인 같은게 있나요?', 'yn84'),
	(29, '다른 학교에서는..', '부경대 동아대에서 교육들은 학생들도 django로 로그인과 회원가입 구현하는 프로젝트를 진행했나요? \r\n\r\n혹시 머신러닝과 접목해서 django 프로젝트를 더 진행해볼 분 계신가요?\r\n', 'lion'),
	(30, '개발 언어', '다들 개발 언어 어떤걸 주로 공부하고 계신가요?\r\n코테는 어떻게 준비하고 계신가요?', 'apple');
/*!40000 ALTER TABLE 'board_board' ENABLE KEYS */;

-- 테이블 dj.board_sboard 구조 내보내기
CREATE TABLE IF NOT EXISTS board_sboard (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  s_board_title varchar(100) NOT NULL,
  s_board_content varchar(500) NOT NULL,
  ys_board_author varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 dj.board_sboard:~0 rows (대략적) 내보내기
DELETE FROM board_sboard;
/*!40000 ALTER TABLE 'board_sboard' DISABLE KEYS */;
INSERT INTO board_sboard (id, s_board_title, s_board_content, s_board_author) VALUES
	(3, 'cs 스터디 같이 하실 분', '매주 2번씩 비대면으로 cs 스터디 같이 하실 분 모집 합니다~!~!\r\n', 'lion'),
	(4, 'mariadb 에러', 'mariadb 에러 좀 같이 해결해주세요 ㅠㅠㅠ', 'apple'),
	(5, '판다스 판단스..', '이거 맞는지 판단스좀요', 'coffee'),
	(6, 'java 스터디하실분?', '자바를 꽉자바', 'yn84');
/*!40000 ALTER TABLE 'board_sboard' ENABLE KEYS */;

-- 테이블 dj.member_member 구조 내보내기
CREATE TABLE IF NOT EXISTS member_member (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  user_id varchar(50) NOT NULL,
  user_pw varchar(50) NOT NULL,
  user_name varchar(50) NOT NULL,
  date_joined datetime(6) NOT NULL,
  user_sch varchar(50) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY user_id (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 dj.member_member:~4 rows (대략적) 내보내기
DELETE FROM member_member;
/*!40000 ALTER TABLE 'member_member' DISABLE KEYS */;
INSERT INTO member_member (id, user_id, user_pw, user_name, date_joined, user_sch) VALUES
	(14, 'admin', 'admin', 'admin', '2022-08-22 05:22:14.421181', '동의대학교'),
	(15, 'lion', 'lion', 'lion', '2022-08-22 05:30:53.217042', '동의대학교'),
	(16, 'apple', 'apple', 'apple', '2022-08-22 05:31:55.307650', '동의대학교'),
	(17, 'coffee', 'coffee', 'coffee', '2022-08-22 05:32:31.682727', '동의대학교'),
	(18, 'yn84', 'yn84', 'yn84', '2022-08-22 05:33:26.716989', '동의대학교');
/*!40000 ALTER TABLE 'member_member' ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
