-- tblBoard --
create table tblBoard(
	idx int not null,
	memID varchar(20) not null, 
	title varchar(100) not null,
	content varchar(2000) not null,
	writer varchar(30) not null,
	indate datetime default now(),
	count int default 0, 
	-- 댓글 기능 추가--
	boardGroup int,
	boardSequence int,
	boardLevel int,
	boardAvailable int,
	primary key(idx)
);

select max(idx) from tblBoard; --NULL ->1 NULL이 아니면 2+1 ->3
select IFNULL(max(idx+1), 1) from tblBoard;
select IFNULL(max(boardGroup)+1, 0) from tblBoard;

insert into tblBoard
select IFNULL(max(idx+1), 1),'sh01','게시판test','게시판test','관리자',
now(),0,IFNULL(max(boardGroup)+1, 0), 0, 0, 1
from tblBoard;

insert into tblBoard
select IFNULL(max(idx+1), 1),'sh02','게시판test','게시판test','뚱이',
now(),0,IFNULL(max(boardGroup)+1, 0), 0, 0, 1
from tblBoard;

insert into tblBoard
select IFNULL(max(idx+1), 1),'sh03','게시판test','게시판test','뚱이2',
now(),0,IFNULL(max(boardGroup)+1, 0), 0, 0, 1
from tblBoard;


select * from tblBoard;



--회원테이블--
create table tblMember(
    memID varchar(50) not null, -- 회원ID
    memPwd varchar(50) not null, -- 회원비번
    memName varchar(50) not null, -- 회원이름
    memPhone varchar(50) not null, -- 회원전화번호
    memAddr varchar(100), -- 회원주소
    latitude decimal(13,10), -- 현재위치위도
    longitude decimal(13,10), -- 현재위치경도
    primary key(memID)
);

insert into tblMember(memID, memPwd, memName, memPhone)
values('sh01','sh01','관리자','010-1111-1111');
insert into tblMember(memID, memPwd, memName, memPhone)
values('sh02','sh02','뚱이','010-2222-2222');
insert into tblMember(memID, memPwd, memName, memPhone)
values('sh03','sh03','홍길동','010-3333-3333');

select * from tblMember;

