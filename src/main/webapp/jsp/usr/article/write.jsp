<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>

<%--
span은 글자 감싸는 용, 의미x
제목과 내용을 다른 줄에 나오게 하기 위해서 div로 감쌈
maxlength 최대 글자
placeholder 내용입력 전 나오는 글자
--%>

<h1>게시물 리스트</h1>

<form>
    <div><span>제목</span>
        <div>
            <input type="text" maxlength="50" placeholder="제목을 입력해주세요" />
        </div>
    </div>
    <div><span>내용</span>
         <div>
             <input type="body" maxlength="300" placeholder="내용을 입력해주세요" />
        </div>
    </div>
    <div><span>작성</span>
        <div>
            <input type="submit" value="작성" />
        </div>
    </div>
</form>