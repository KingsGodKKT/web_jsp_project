  drop table board;
  create table board (
    num number(11) primary key, -- 게시물번호
    userId varchar2(50) not null,
    subject varchar2(50) not null,
    reg_date date,
    readcount number(11),
    content varchar2(500) not null,
    filename varchar2(100)
  );
  
 create table board_comment (
    comment_num number(11) primary key,
    board_num number(11) not null references board(num), 
    writer varchar2(50) not null, 
    content varchar2(500) not null,
    reg_date date
  );