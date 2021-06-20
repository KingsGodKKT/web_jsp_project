DROP TABLE BOARD cascade constraint;

CREATE TABLE BOARD
(
    b_num    INTEGER NOT NULL,
    b_name    VARCHAR2(100) NOT NULL,
    b_cnt    VARCHAR2(1025) NOT NULL,
    b_date    DATE DEFAULT sysdate NOT NULL,
    b_view    INTEGER NOT NULL,
    b_shr    CHAR(1) DEFAULT 'y' NOT NULL,
    m_id    VARCHAR2(20) NOT NULL,
    f_name    VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN BOARD.b_num IS '게시글번호';

COMMENT ON COLUMN BOARD.b_name IS '게시글제목';

COMMENT ON COLUMN BOARD.b_cnt IS '게시글내용';

COMMENT ON COLUMN BOARD.b_date IS '게시글 작성일';

COMMENT ON COLUMN BOARD.b_view IS '조회수';

COMMENT ON COLUMN BOARD.b_shr IS '공지여부';

COMMENT ON COLUMN BOARD.m_id IS '아이디';

COMMENT ON COLUMN FILE.f_name IS '파일명';

COMMENT ON TABLE BOARD IS '게시글';

select * from board;