<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>

<%--
form은 그저 url 생성기일 뿐
span은 글자 감싸는 용, 의미x
제목과 내용을 다른 줄에 나오게 하기 위해서 div로 감쌈
maxlength 최대 글자
placeholder 내용입력 전 나오는 글자
전송 버튼 만들기 <input type="submit" value="작성" />
--%>
<%@ include file="../common/head.jspf"%>

<script>
    function ArticleSave__submitForm(form){
        form.title.value=form.title.value.trim();
        if ( form.title.value.length == 0 ) {
            alert('제목을 입력해주세요.');
            form.title.focus();
            return;
        }

        form.body.value=form.body.value.trim();
        if ( form.body.value.length == 0 ) {
            alert('내용을 입력해주세요.');
            form.body.focus();
            return;
        }
        form.submit();
    }
</script>
<section>
    <!-- container(max-width) : 너비가 너무 넓게 퍼지는 것을 막는다 + 반응형은 잃지 않는다. -->
    <!-- mx-auto : margin-left:auto; margin-right:auto; -->
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">게시물 작성</h1>
        <form method="POST" onsubmit="ArticleSave__submitForm(this); return false;">
            <div>
                <span>제목</span>
                <div>
                    <input name="title" type="text" maxlength="50" placeholder="제목을 입력해주세요." />
                </div>
            </div>

            <div>
                <span>내용</span>
                <div>
                    <input name="body" type="text" maxlength="300" placeholder="내용을 입력해주세요." />
                </div>
            </div>

            <div>
                <div>
                    <input class="hover:underline hover:text-[red] cursor-pointer" type="submit" value="작성" />
                </div>
            </div>
        </form>
    </div>
</section>

<%@ include file="../common/foot.jspf"%>