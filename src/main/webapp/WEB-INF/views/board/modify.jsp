<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">공지사항 수정</h1>
<p class="mb-4">교육과정과 교육정책 전반의 정보를
    통합 제공하고, 협업 소통을 지원하는
    교육정보 통합 지원 서비스입니다 <a target="_blank"
                         href="https://localhost:8080t"> &nbsp;&nbsp; 학습시스템 홈페이지</a>.</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">게시판 수정</h6>
    </div>
    <div class="card-body">

        <form id="actionForm" action="/board/modify" method="post" enctype="multipart/form-data">
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">번호</span>
                </div>
                <input type="text" name="bno" class="form-control" value="<c:out value="${vo.bno}"/>" readonly >
            </div>
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">제목</span>
                </div>
                <input type="text" name="title" class="form-control" value="<c:out value="${vo.title}"/>">
            </div>
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">내용</span>
                </div>
                <input type="text" name="content" class="form-control"  value="<c:out value="${vo.content}"/>">
            </div>
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">작성자</span>
                </div>
                <input type="text" class="form-control" name="writer" value="<c:out value="${vo.writer}"/>" readonly>
            </div>
            <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">날짜/시간</span>
                </div>
                <input type="text" class="form-control" value="<c:out value="${vo.regDate}"/>" readonly>
            </div>

            <div class="form-group input-group input-group-lg">
                <div>
                    <span class="input-group-text">파일</span>
                </div>
                <input type="file" name="files" class="form-control" multiple>
            </div>

            <div class="input-group input-group-lg">
                <button type="submit" class="btn btn-info btnList">목록</button>
                <button type="submit" class="btn btn-warning btnModify">수정</button>
                <button type="submit" class="btn btn-danger btnRemove">삭제</button>
            </div>

            <div class="deleteImages">

            </div>

        </form>
    </div>

    <div class="card">
        <div class="attachList d-flex">
            <c:if test="${vo.attachVOList != null && vo.attachVOList.size() > 0}">
                <c:forEach items="${vo.attachVOList}" var="attach">
                    <c:if test="${attach.ano != null}">
                        <div class="d-flex flex-column m-1">
                            <img src="/files/s_${attach.fullName}"/>
                            <button class="btn btn-danger removeImgBtn"
                                    data-ano="${attach.ano}"
                                    data-fullname="${attach.fullName}"
                            >X</button>
                        </div>
                    </c:if>
                </c:forEach>

            </c:if>
        </div>
    </div>

</div>

<form id="listForm" action="/board/list">
    <input type="hidden" name="pageNum" value="${cri.pageNum}" >
    <input type="hidden" name="amount" value="${cri.amount}" >

    <c:if test="${cri.types != null && cri.keyword != null }">
        <c:forEach var="type" items="${cri.types}">
            <input type="hidden" name="types" value="${type}">
        </c:forEach>
        <input type="hidden" name="keyword" value="<c:out value="${cri.keyword}" />" />
    </c:if>
</form>

<%@include file="../includes/footer.jsp"%>

<script>

    const bno = '${vo.bno}'
    const actionForm = document.querySelector("#actionForm")
    const listForm = document.querySelector("#listForm")

    document.querySelector(".btnList").addEventListener("click",(e)=> {
        e.preventDefault()
        e.stopPropagation()

        listForm.submit()
    }, false)

    document.querySelector(".btnModify").addEventListener("click",(e)=> {
        e.preventDefault()
        e.stopPropagation()

        actionForm.action = `/board/modify/\${bno}`
        actionForm.method = 'post'
        actionForm.submit()

    }, false)

    document.querySelector(".btnRemove").addEventListener("click",(e)=> {
        e.preventDefault()
        e.stopPropagation()

        // 삭제해야 하는 파일들을 hidden 태그로 만들어준다.
        const fileArr = document.querySelectorAll(".attachList button")

        console.log(fileArr)

        if(fileArr && fileArr.length > 0) {

            let str = ''

            for (const btn of fileArr) {
                const ano = btn.getAttribute("data-ano")
                const fullName = btn.getAttribute("data-fullname")

                str += `<input type='hidden' name='anos' value='\${ano}'> `
                str += `<input type='hidden' name='fullNames' value='\${fullName}'> `
            }//end for
            document.querySelector(".deleteImages").innerHTML += str

        }//end if

        actionForm.action = `/board/remove/\${bno}`
        actionForm.method = 'post'
        actionForm.submit()

    }, false)

    document.querySelector(".attachList").addEventListener("click", (e) => {

        const target = e.target

        if(target.tagName != 'BUTTON') {
            return
        }

        const ano = target.getAttribute("data-ano")
        const fullName = target.getAttribute("data-fullname")

        if(ano && fullName) {

            let str = ''

            str += `<input type='hidden' name='anos' value='\${ano}'> `
            str += `<input type='hidden' name='fullNames' value='\${fullName}'> `

            console.log("ano ", ano, "fullName ", fullName)
            target.closest("div").remove()

            document.querySelector(".deleteImages").innerHTML += str
        }



    }, false)


</script>

<%@include file="../includes/end.jsp"%>