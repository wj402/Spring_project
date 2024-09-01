<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="../includes/header.jsp"%>

<!-- Page Heading -->
<head>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/register.css">

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3 header_text">
        <h1 class="h3 mb-2 text-gray-800"><a target="_blank" ref="https://localhost:8080">공지사항</a></h1>
    </div>
    <div class="card-body">

        <form id="registerForm" action="/board/register" method="post" enctype="multipart/form-data">
            <div class="form-group input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">제목</span>
                </div>
                <input type="text" name="title" class="form-control" >
            </div>
            <div class="form-group input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">내용</span>
                </div>
                <textarea type="text" name="content" class="form-control" rows="3" ></textarea>
            </div>

            <div class="form-group input-group input-group-lg">
                <div class="input-group-prepend">
                 <span class="input-group-text">작성자</span>
                </div>
                <input type="text" name="writer" class="form-control"
                value="<sec:authentication property="principal.Username"/>" readonly >

            </div>

            <div class="form-group input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">파일</span>
                </div>
                <input type="file" name="files" class="form-control" multiple>
            </div>

            <div class="input-group input-group-lg register_button">
                <button type="submit" class="btn btn-primary submitBtn">보내기</button>
            </div>
        </form>
    </div>
</div>

<%@include file="../includes/footer.jsp"%>

<script>

    const formObj = document.querySelector("#registerForm")

    document.querySelector(".submitBtn").addEventListener("click", e => {
        e.stopPropagation()
        e.preventDefault()

        const fileReg = /(.*?)\.(gif|png|jpg|jpeg|bmp)$/;

        // file suffix check 파일 확장자 체크
        const fileInput = document.querySelector("input[name='files']")

        const fileArr = fileInput.files

        if(fileArr && fileArr.length > 0) {
            for (const file of fileArr) {
                if(!file.name.match(fileReg)) {
                    alert("첨부파일 확장자 위반")
                    return;
                }
            }
        }

        formObj.submit()

    }, false)
</script>

<%@include file="../includes/end.jsp"%>