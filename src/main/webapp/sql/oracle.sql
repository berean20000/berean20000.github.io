-- 회원정보
create table mungeno_member(
	mid varchar(20) primary key,
    mpw varchar(30) not null,
    mname varchar(20) UNIQUE,
    mregion varchar(30) not null,
    maddress varchar(80),
    memail varchar(30),
    startdate date default sysdate,
    mpoint int default 0
);
select * from mungeno_member;
drop table mungeno_member;

insert into mungeno_member(mid,mpw,mname,mregion,memail) values ('origin','1111','오리진','서울특별시','origin@naver.com');
update mungeno_member set mpw=?,mname=?,mregion=?,memail=? where mid=?;
delete from mungeno_member where mid=?;

-- 난수 생성
SELECT DBMS_RANDOM.STRING('X', 8) STR FROM DUAL;
update mungeno_member set mpw=(SELECT DBMS_RANDOM.STRING('X', 8) STR FROM DUAL) where mid='kokori';

-- 일지
create table mungeno_diary(
	did int primary key,
	mid varchar(20) not null,
	dtitle varchar(90),
    dwriter varchar(20) not null,
	dimg varchar(90),
	dcontent varchar(600),
	ddate date default sysdate,
	rcount int default 0,
	drecommand int default 0,
	mregion varchar(30) not null
);
select * from mungeno_diary;
drop table mungeno_diary;

-- 페이징 준비
select * from (SELECT * FROM ( SELECT rownum rnum,did,dtitle,dwriter,ddate,rcount,dimg,drecommand,dcontent,mregion FROM mungeno_diary order by did desc) pagetable where rnum <= 10 ) where rnum >= 1;
select * from (SELECT * FROM ( SELECT rownum rnum,did,dtitle,dwriter,ddate,rcount,dimg,drecommand,dcontent,mregion FROM mungeno_diary where mregion='강원' order by did desc ) pagetable where rnum <= 20 ) where rnum >= 3;
SELECT COUNT(*) as count FROM mungeno_diary where mregion='강원';

insert into mungeno_diary(did,mid,dtitle,dwriter,dimg,dcontent,mregion) values ((select nvl(max(did),1000)+1 from mungeno_diary),'origin','안녕','홍길동','/mempic/001.png','반가워','강원');
update mungeno_diary set dtitle=?,dcontent=?,dimg=? where did=?;
delete from mungeno_diary where did=?;
-- 추천
update mungeno_diary set drecommand=drecommand+1 where did=?;
-- 댓글(트랜잭션)
update mungeno_diary set rcount=rcount+1 where did=?;
-- 회원탈퇴(트랜잭션)
update mungeno_diary set mid='(알수없음)' where did=?;


-- 댓글
create table mungeno_reply(
	rid int primary key,
	mid varchar(20) not null,
	did int not null,
	constraint rdFK foreign key (did) references mungeno_diary (did) on delete cascade,
	rwriter varchar(20) not null,
    rcontent varchar(300) not null,
	rdate date default sysdate,
	rrecommand int default 0
)
select * from mungeno_reply;
drop table mungeno_reply;

insert into mungeno_reply(rid,mid,did,rwriter,rcontent) values ((select nvl(max(rid),1000)+1 from mungeno_reply),'origin',1001,'홍길동','나두');
delete from mungeno_reply where rid=?;
-- 추천
update mungeno_reply set rrecommand=rrecommand+1 where rid=?;


-- 판매상품
create table mungeno_product(
	pid int primary key,
	pname varchar(80) not null,
	price int default 0,
	pstock int default 0,
	pstate int default 0,
	pimg varchar(80),
	pcontent varchar(500) not null
)
select * from mungeno_product;
drop table mungeno_product;

insert into mungeno_product(pid,pname,price,pstock,pimg,pcontent) values ((select nvl(max(pid),1000)+1 from mungeno_product),'용각산',1000,100,'/propic/001.png','추천상품');
update mungeno_product set pname=?,price=?,pstock=?,pstate=?,pimg=?,pcontent=? where pid=?;
delete from mungeno_product where pid=?;
-- 판매
update mungeno_product set pstock=pstock-? where pid=1001;


-- 구매내역
create table mungeno_buylist(
	bid int primary key,
	mid varchar(20) not null,
	--constraint bmFK foreign key (mid) references mungeno_member (mid) on delete cascade,
	pid int not null,
	--constraint bpFK foreign key (pid) references mungeno_product (pid) on delete cascade,
	pname varchar(80) not null,
	bdate date default sysdate
)
select * from mungeno_buylist;
drop table mungeno_buylist;

insert into mungeno_buylist(bid,mid,pid) values ((select nvl(max(bid),1000)+1 from mungeno_buylist),'origin',1001,'용각산');
delete from mungeno_buylist where bid=?;