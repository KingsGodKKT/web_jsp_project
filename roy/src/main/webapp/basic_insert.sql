--멤버 2명 추가 k1 k2
insert into rmember values ('k1', '1234', '김하나', '강남구 이화로10길 401','k1@naver.com', '01012341597', sysdate, 'n');
insert into rmember values ('k2', '1234', '이하나', '용산구 이태원로19길 1층',
                            'k2@naver.com', '01045683579', sysdate, 'n');



--게시물 3개 공지여부 2개 댓글 1개
--insert into board values ('1', '크루엘라 썰', '영화관을 다녀왔다', SYSDATE, '0', 'y',
                            'y', 'k1');
--insert into board values ('2', '컨저링', '공포영화 무서워', SYSDATE, '0', 'y',
                            'n', 'k1');
--insert into board values ('3', '아웃백', '맛있어', SYSDATE, '0', 'n',
                            'n', 'k2');
                            
-- 상품 추가
--insert into product values ('1', '30장 포토북', '30000', '150', '8x8', '하드커버', sysdate);
-- 주문번호
--insert into porder values ('1', sysdate, '뾱뽁이 부탁드려요', '1', 'k1');

--관리자 추가
insert into manager values ('master', '1234');
-- 1게시물 댓글
insert into bcomment values ('1', '좋아요',sysdate,'1','k2');                            