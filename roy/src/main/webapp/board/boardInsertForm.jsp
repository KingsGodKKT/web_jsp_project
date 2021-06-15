<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css"/>
</head>
<body>
<div id="wrap">
    <div id="container">
        <div class="inner">        
            <h2>게시글 작성</h2>
            <form action="insertBoard.bo" enctype="multipart/form-data" method="post">
                <table width="100%" class="table02">
                    <colgroup>
                        <col width="20%">
                        <col width="*">
                    </colgroup>
                    <tbody id="tbody">
                        <tr>
                            <th>제목<span class="t_red">*</span></th>
                            <td><input id="board_subject" name="board_subject" value="" class="tbox01"/></td>
                        </tr>
                        <tr>
                            <th>내용<span class="t_red">*</span></th>
                            <td><textarea id="board_content" name="board_content" cols="10" rows="5" class="textarea01"></textarea></td>
                        </tr>
                        <tr>
                            <th scope="row">첨부파일</th>
                            <td><input type="file"  name="file"></td>
                        </tr>
                        <tr><th colspan="2"> <input type="submit" class="btn black" value="등록하기"></th></tr>
                    </tbody>
                </table>
            </form>
            <div class="btn_right mt15">
                <input type="button" class="btn black mr5" onclick="location.href='list.bo'" value="목록으로">
               
            </div>
        </div>
    </div>
</div>
</body>
</html>