/* member */
/* 만약을 대비해서...*/
ALTER TABLE member DROP primary key cascade;
COMMIT;
DROP TABLE member;
COMMIT;
/* ---- //만약을 대비해서... */

CREATE TABLE member(
	id         VARCHAR2(11)    primary key,
    email      VARCHAR2(50)    not null,
	pwd        VARCHAR2(20)    not null,
	indate DATE DEFAULT SYSDATE,
	use CHAR(1) DEFAULT 'Y'
);
COMMIT;

select * from member;

delete from member where id='a';
commit;