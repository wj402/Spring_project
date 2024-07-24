<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Read</h1>
<p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
    For more information about DataTables, please visit the <a target="_blank"
                                                               href="https://datatables.net">official DataTables documentation</a>.</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Board Read</h6>
    </div>
    <div class="card-body">

        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">Bno</span>
            </div>
            <input type="text" name="bno" class="form-control" value="<c:out value="${vo.bno}"/>" readonly >
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">Title</span>
            </div>
            <input type="text" name="title" class="form-control" value="<c:out value="${vo.title}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">Content</span>
            </div>
            <input type="text" name="content" class="form-control"  value="<c:out value="${vo.content}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">Writer</span>
            </div>
            <input type="text" name="writer" class="form-control" value="<c:out value="${vo.writer}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">RegDate</span>
            </div>
            <input type="text" name="regDate" class="form-control" value="<c:out value="${vo.regDate}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <button type="submit" class="btn btn-info btnList">LIST</button>
            <button type="submit" class="btn btn-warning btnModify">MODIFY</button>
        </div>
    </div>
</div>

<div class="card shadow mb-4">
    <ul class="list-group replyList">
        <li class="list-group-item d-flex justify-content-between align-items-center">
            A list item
            <span class="badge bg-primary rounded-pill">14</span>
        </li>
    </ul>
</div>

<form id="actionForm" method="get" action="/board/list">
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
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

    const actionForm = document.querySelector("#actionForm")
    const bno = '${vo.bno}'

    document.querySelector(".btnList").addEventListener("click",(e)=> {
        actionForm.setAttribute("action", "/board/list")
        actionForm.submit()
    }, false)

    document.querySelector(".btnModify").addEventListener("click",(e) => {
        actionForm.setAttribute("action", `/board/modify/\${bno}`)
        actionForm.submit()
    }, false)

</script>

<script>

    const boardBno = ${vo.bno}
    const replyUL = document.querySelector(".replyList")

    const getList = async(pageParam, amountParam ) => {
        const pageNum = pageParam || 1
        const amount = amountParam || 10

        const res = await axios.get(`/reply/list/\${boardBno}`, {
            params: {pageNum, amount}
        })
        const data = res.data
        const pageDTO = data.pageDTO
        const replyList = data.replyList

        printReplyList(pageDTO, replyList)

    }

    const printReplyList = (pageDTO, replyList) => {
        replyUL.innerHTML = ""

        let str = ''
        for (const reply of replyList) {

            const {rno, replyText, replyer} = reply

            str += `
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    \${rno} --- \${replyText}
                    <span class="badge bg-primary rounded-pill">${replyer}</span>
                </li>`
        }
        replyUL.innerHTML = str
    }

    getList()

</script>

<%@include file="../includes/end.jsp"%>