select * from tab;
select * from goseoul;
drop table goseoul purge;

create table goseoul(
	free_no number primary key,
	local_no varchar2(20),
	free_title varchar2(20),
	user_no varchar2(20),
	free_content varchar2(200),
	free_category varchar2(20),
	free_tag varchar2(20),
	free_hit number,
	free_like number,
	free_dislike number,
	free_date date
);

CREATE SEQUENCE gos_seq
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;
       
       
       
insert into goseoul values(
	gos_seq.nextval,
	'02',
	'1000',
	'둘리와 또치',
	'둘리는 또치랑 친하다',
	'맛집',
	'둘리',
	0,
	1,
	-1,
	sysdate
	)



