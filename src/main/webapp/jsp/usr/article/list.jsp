<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%
    List<ArticleDto> articles = (List<ArticleDto>)request.getAttribute("articles");
%>
<%@ include file="../common/head.jspf"%>
<!-- 보통 구획은 섹션으로 나눈다. -->
<section>
    <!-- container(max-width) : 너비가 너무 넓게 퍼지는 것을 막는다 + 반응형은 잃지 않는다. -->
    <!-- mx-auto : margin-left:auto; margin-right:auto;  블럭요소 가운데 정렬-->
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">게시물 리스트</h1>
        <ul class="mt-5">
            <% for ( ArticleDto article : articles ) { %>
            <li class="flex">
                <a class="w-[40px] hover:underline hover:text-[red]" href="/usr/article/detail/free/<%=article.getId()%>"><%=article.getId()%></a>
                <!-- flex-grow : 성장성 1 (반응형으로 크게 늘어남) -->
                <a class="flex-grow hover:underline hover:text-[red]" href="/usr/article/detail/free/<%=article.getId()%>"><%=article.getTitle()%></a>
                <a onclick="if ( !confirm('정말로 삭제하시겠습니까?') ) return false;" class="hover:underline hover:text-[red] mr-2" href="/usr/article/delete/free/<%=article.getId()%>">삭제</a>
                <a class="hover:underline hover:text-[red]" href="/usr/article/modify/free/<%=article.getId()%>">수정</a>
            </li>
            <% } %>
        </li>
        </ul>
    </div>
</section>
<%@ include file="../common/foot.jspf"%>