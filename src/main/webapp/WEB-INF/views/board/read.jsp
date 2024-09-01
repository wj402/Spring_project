<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="../includes/header.jsp"%>

<!-- Page Heading -->
<head>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/read.css">

    <!-- Bootstrap CSS -->
    <script link="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"></script>
</head>

<!-- DataTales Example -->
<div class="card shadow mb-4 ">
    <div class="card-header py-3 header_head">
        <h1 class="h3 mb-2 text-gray-800"><a target="_blank" ref="https://localhost:8080">공지사항</a></h1>
    </div>
    <div class="card-body read_box">

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
            <input type="text" name="title" class="form-control" value="<c:out value="${vo.title}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">내용</span>
            </div>
            <input type="text" name="content" class="form-control"  value="<c:out value="${vo.content}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">작성자</span>
            </div>
            <input type="text" name="writer" class="form-control" value="<c:out value="${vo.writer}"/>" readonly>
        </div>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text">날짜/시간</span>
            </div>
            <input type="text" name="regDate" class="form-control" value="<c:out value="${vo.formattedRegDate}"/>" readonly>
        </div>
        <div class="input-group input-group-lg read_button">
            <button type="submit" class="btn btn-info btnList read_list_button">목록</button>

            <sec:authentication property="principal" var="secInfo" />

<%--            <h5>${secInfo.uid}</h5>--%>
<%--            <h5>${vo.writer}</h5>--%>

            <c:if test="${secInfo.uid == vo.writer}">
                <button type="submit" class="btn btn-warning btnModify read_modify_button">수정</button>
            </c:if>
        </div>
    </div>

    <div class="attachList d-flex">
        <c:if test="${vo.attachVOList != null && vo.attachVOList.size() > 0}">
            <c:forEach items="${vo.attachVOList}" var="attach">
                <c:if test="${attach.ano != null}">
                    <div>
                        <a href="/files/${attach.fullName}" target="_blank">
                            <img src="/files/s_${attach.fullName}"/>
                        </a>
                    </div>
                </c:if>
            </c:forEach>

        </c:if>
    </div>
</div>

<div id="replyModal" class="card shadow mb-4 reply">
    <div class="card-body reply_card">
        <ul class= "list-group reply_header">
            <li class=" d-flex justify-content-between align-items-center" >
                <ol class="reply_header_list">
                    <li>순서</li>
                    <li>
                        <span>댓글</span>
                    </li>
                    <li>아이디</li>
                    <li>변경버튼</li>
                </ol>
            </li>
        </ul>
        <!-- 댓글 목록 영역 -->
        <ul class="list-group replyList">
            <!-- 예시 댓글 항목 -->
            <li class="list-group-item d-flex justify-content-between align-items-center" >
                    <span class="reply-text">댓글 내용 1</span>
            </li>
            <!-- 추가 댓글 항목 -->
        </ul>

        <!-- 댓글 작성 및 수정 영역 -->
        <div class="comment-form-container mt-4">
            <div class="input-group input-group-lg reply_comment">
<%--                <div class="input-group-prepend">--%>
<%--                    <span class="input-group-text">댓글</span>--%>
<%--                </div>--%>
                <input type="text" id="replyText" name="replyText" class="form-control" placeholder="댓글을 작성하세요">
                <button id="replyRegBtn" type="button" class="btn write_button">작성</button>
            </div>
            <div class="input-group input-group-sm mt-2 reply_comment_id" style="display: none">
                <div class="input-group-prepend">
                    <span class="input-group-text">댓글자</span>
                </div>
                <!-- readonly 속성 추가 -->
                <input type="text" id="replyer" name="replyer" class="form-control" readonly  value="${secInfo.username}" style="font-size: 16px;">
            </div>
<%--            <div class="mt-2 reply_button">--%>
<%--                <button id="replyRegBtn" type="button" class="btn btn-primary">작성</button>--%>
<%--                <button id="replyModBtn" type="button" class="btn btn_color">수정</button>--%>
<%--                <button id="replyDelBtn" type="button" class="btn btn_color" >삭제</button>--%>
<%--            </div>--%>

        <!-- 페이지네이션 -->
        <div class="mt-3">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" tabindex="-1">이전</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item active">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                </li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">다음</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<%--<div class="modal" id="replyModal" tabindex="-1" role="dialog">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">댓글 작성하기</h5>--%>
<%--                <button type="button" class="close close_box" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            <div class="modal-body reply_box ">--%>
<%--                <div class="input-group input-group-lg">--%>
<%--                    <div class="input-group-prepend">--%>
<%--                        <span class="input-group-text">댓글</span>--%>
<%--                    </div>--%>
<%--                    <input type="text" name="replyText" class="form-control" >--%>
<%--                </div>--%>
<%--                <div class="input-group input-group-sm">--%>
<%--                    <div class="input-group-prepend">--%>
<%--                        <span class="input-group-text">댓글자</span>--%>
<%--                    </div>--%>
<%--                    <input type="text" name="replyer" class="form-control" >--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button id="replyModBtn" type="button" class="btn btn-warning">수정</button>--%>
<%--                <button id="replyDelBtn" type="button" class="btn btn-danger">삭제</button>--%>
<%--                <button id="replyRegBtn" type="button" class="btn btn-primary">작성</button>--%>
<%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

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

    const modifyBtn = document.querySelector(".btnModify")
    if(modifyBtn) {
        document.querySelector(".btnModify").addEventListener("click",(e) => {
            actionForm.setAttribute("action", `/board/modify/\${bno}`)
            actionForm.submit()
        }, false)
    }


</script>

<script>

    const boardBno = ${vo.bno}
    const replyUL = document.querySelector(".replyList")
    const pageUL = document.querySelector(".pagination")

    // 현재 로그인한 사용자 정보 가져오기
    const currentUser = '<sec:authentication property="principal.Username"/>'

    // 댓글 목록 가져오기
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

    // 댓글 등록 함수
    const registerReply = async (replyObj) => {

        const res = await axios.post('/reply/register', replyObj )

        const data = res.data

        const lastpage = Math.ceil(data.COUNT / 10.0)

        getList(lastpage)

    }

    // 댓글 리스트를 출력하는 함수
    const printReplyList = (pageDTO, replyList) => {
        replyUL.innerHTML = ""

        let str = ''
        for (const reply of replyList) {

            const {rno, replyText, replyer} = reply

            str += `
                <li data-rno="\${rno}" class="list-group-item d-flex justify-content-between align-items-center reply-item">
                    <div class="reply_id">\${rno}</div>
                    <div class="reply_comment_text">
                        <span>\${replyText}</span>
                    </div>
                    <div class="reply_user">\${replyer}</div>
                    <div class="reply_actions">
                        \${replyer === currentUser ? `
                        <button id="replyModBtn" type="button" class="replyModBtn btn btn_color edit-btn" data-rno="\${rno}">수정</button>
                        <button id="replyDelBtn" type="button" class ="replyDelBtn btn btn_color" data-rno="\${rno}">삭제</button>
                        ` : ''}
                    </div>
                </li>`;

        }
        replyUL.innerHTML = str

        //-------------------------------------------
        const {startPage, endPage, prev, next} = pageDTO
        const pageNum = pageDTO.cri.pageNum

        let pageStr = ''

        //prev
        if(prev) {
            pageStr +=
                `<li class="page-item">
                     <a class="page-link" href="\${startPage-1}" tabindex="-1">Previous</a>
                </li>`
        }

        for (let i = startPage; i <= endPage; i++) {

            pageStr += `<li class="page-item \${i == pageNum? 'active': ''}">
            <a class="page-link" href="\${i}">\${i}</a>
        </li>`
        }

        //next
        if(next) {
            pageStr +=
                `<li class="page-item">
                     <a class="page-link" href="\${endPage+1}" tabindex="-1">next</a>
                </li>`
        }

        pageUL.innerHTML = pageStr
    }

    pageUL.addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()
        const target = e.target
        const pageNum = target.getAttribute("href")

        console.log(pageNum)
        currentPage = pageNum
        getList(pageNum)

    }, false)

    // 현재 댓글 페이지
    let currentPage = 1
    let currentRno = 0

    replyUL.addEventListener("click", e=> {
        e.stopPropagation()
        const target = e.target
        //console.log(target)
        currentRno =target.getAttribute("data-rno")

        //console.log("rno: " + rno)
        //console.log("currentPage:" + currentPage)

        getReply(currentRno).then( result => {
            replyTextInput.value = result.replyText
            replyerInput.value =  result.replyer

            //result.replyer와 currentUser가 일치하지 않는다면
            const delBtn = document.querySelector("#replyDelBtn")
            const modBtn = document.querySelector("#replyModBtn")

            const noneValue = result.replyer === currentUser ? '' : 'd-none'

            // modBtn.setAttribute('class',`btn btn-warning \${noneValue}`)
            // delBtn.setAttribute('class',`btn btn-danger \${noneValue}`)

            //replyAddModal.show()
        } )

    }, false)

    getList()

    const replyAddModal = new bootstrap.Modal(document.querySelector('#replyModal'))

    const replyTextInput = document.querySelector("input[name='replyText']")
    const replyerInput = document.querySelector("input[name='replyer']")

    // 댓글 가져오기
    const getReply = async (rno) => {

        const res = await axios.get(`/reply/\${rno}`)

        return res.data
    }

    // 댓글 삭제하기
    const deleteReply = async (rno) => {
        const res = await axios.delete(`/reply/\${rno}`)

        return res.data // {Result:true}
    }

    // 댓글 수정하기
    const modifyReply = async (replyObj) => {

        const res = await axios.put(`/reply/\${currentRno}`, replyObj)

        return res.data
    }


    //댓글 등록 버튼 클릭시
    document.querySelector("#replyRegBtn").addEventListener("click", e => {
        e.preventDefault()
        e.stopPropagation()

        const replyObj = {
            replyText: replyTextInput.value,
            replyer: replyerInput.value,
            bno: boardBno
        }

        registerReply(replyObj).then( result => {
            replyAddModal.hide()
        })

    }, false)

    // 댓글 삭제 버튼 클릭 시 (이벤트 위임)
    // replyUL.addEventListener("click", e => {
    //     if (e.target && e.target.classList.contains("replyDelBtn")) {
    //         const replyItem = e.target.closest(".reply-item");
    //         const currentRno = replyItem.getAttribute("data-rno");
    //
    //         deleteReply(currentRno).then(result => {
    //             alert('댓글이 삭제되었습니다');
    //             replyAddModal.hide();
    //             getList();
    //         }).catch(ex => {
    //             alert("댓글 삭제는 불가능합니다.");
    //             replyAddModal.hide();
    //             getList();
    //         });
    //     }
    // }, false);

    //댓글 수정 버튼 클릭 시
    // document.addEventListener('DOMContentLoaded', () => {
    //     const replyModBtn = document.querySelector("#replyModBtn");
    //     if (replyModBtn) {
    //         replyModBtn.addEventListener("click", e => {
    //             const replyObj = {
    //                 replyText: document.querySelector('#replyText').value,
    //                 replyer: document.querySelector('#replyer').value,
    //                 bno: boardBno
    //             };
    //             modifyReply(replyObj).then(result => {
    //                 alert("댓글이 수정되었습니다.");
    //                 replyAddModal.hide();
    //                 getList(currentPage);
    //             }).catch(ex => {
    //                 alert("댓글 수정이 불가능합니다.");
    //                 replyAddModal.hide();
    //                 getList(currentPage);
    //             });
    //         });
    //     } else {
    //         console.error("#replyModBtn 요소를 찾을 수 없습니다.");
    //     }
    // });

    // 댓글 등록 버튼 클릭 이벤트 처리
    document.querySelector("#replyRegBtn").addEventListener("click", e => {
        e.preventDefault();
        e.stopPropagation();

        const replyObj = {
            replyText: document.querySelector("#replyText").value,
            replyer: document.querySelector("#replyer").value,
            bno: boardBno
        };

        registerReply(replyObj).then(() => {
            document.querySelector("#replyText").value = ''; // 댓글 입력란 초기화
            getList(currentPage); // 댓글 목록 갱신
        }).catch(error => {
            console.error("댓글 등록 실패:", error);
        });
    }, false);

    // 댓글 리스트 초기화
    getList();

    // 댓글 목록의 수정 및 삭제 버튼 클릭 이벤트 핸들링
    replyUL.addEventListener('click', e => {
        const target = e.target;
        if (target.classList.contains('replyModBtn')) {
            const rno = target.getAttribute('data-rno');
            const replyText = prompt('수정할 댓글을 입력하세요:'); // Prompt user for new comment text

            if (replyText) {
                const replyObj = {
                    replyText: replyText,
                    replyer: currentUser, // Assuming you want to use currentUser here
                    rno: rno,
                    bno: boardBno
                };

                modifyReply(replyObj)
                    .then(result => {
                        alert('댓글이 수정되었습니다.');
                        getList(currentPage); // Refresh the list
                    })
                    .catch(ex => {
                        alert('댓글 수정이 불가능합니다.');
                    });
            }
        } else if (target.classList.contains('replyDelBtn')) {
            const rno = target.getAttribute('data-rno');
            if (confirm('정말로 이 댓글을 삭제하시겠습니까?')) {
                deleteReply(rno)
                    .then(result => {
                        alert('댓글이 삭제되었습니다.');
                        getList(currentPage); // Refresh the list
                    })
                    .catch(ex => {
                        alert('댓글 삭제가 불가능합니다.');
                    });
            }
        }
    }, false);




</script>



<%@include file="../includes/end.jsp"%>