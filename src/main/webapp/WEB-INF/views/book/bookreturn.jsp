<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="../includes/header.jsp"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>반납 페이지</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/detail.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/bookreturn.css">
</head>
<body>
<sec:authentication property="principal" var="secInfo" />
<%--    ${books}--%>
<table class="table table-bordered">
    <div class="man_box">
        <div class="man_container">
            <div class="man_inner">
                <div class="man_top">
                    <h1>반납페이지</h1>
                    <p>등록된 반납 도서품목들 입니다.</p>
                </div>
                <div>
                    <nav>
                      <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">반납목록</button>
                      </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                          <ol class="prod_list">
                            <c:forEach var="book" items="${books}">
                                <c:if test="${book.borrowed}">
                                    <li class="prod_item" id="book-item-${book.id}" data-book-id="${book.id}">
                                        <div class="prod_img_box">
                                            <div class="prod_thumb_box">
                                                <a href="${path}/books/detail/${book.id}" class="prod_link prod_box_link">
                                                    <span class="img_box">
                                                        <!-- 이미지 URL을 BookVO의 imageUrl로 대체 -->
                                                        <img src="${book.imageUrl}" alt="${book.title}" />
                                                    </span>
                                                </a>
                                            </div>
                                            <div class="prod_info_box">
                                                <div class="prod_info_box_title">
                                                    <a href="${path}/books/detail/${book.id}">
                                                        <span class="prod_name">
                                                            <!-- BookVO의 title을 사용 -->
                                                            ${book.title}
                                                        </span>
                                                    </a>
                                                </div>
                                                <span class="prod_author">
                                                    <!-- BookVO의 author와 publisher를 사용 -->
                                                    ${book.author} · ${book.publisher}
                                                </span>
                                            </div>
                                        </div>
                                        <div class="prod_btn">
                                            <!-- HTML 버튼 예시 -->
                                            <button type="button" data-book-id="${book.id}" class="btn btn-dark return-btn" onclick="returnBook(${book.id})">반납</button>
                                            <div class="prod_status">
                                                <span id="status-${book.id}" class="status">
                                                    <!-- 초기 상태 설정 -->
                                                    상태: 대여 중
                                                </span>
                                            </div>
                                        </div>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ol>
                      </div>
                      <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">...</div>
                      <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</table>


<!-- Modal -->
<div class="modal fade" id="statusModal" tabindex="-1" aria-labelledby="statusModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="statusModalLabel">도서관리</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p id="modalMessage">상태: </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.return-btn').forEach(button => {
        button.addEventListener('click', () => {
            const bookId = button.dataset.bookId;
            returnBook(bookId);
        });
    });
});

function removeBookFromList(bookId) {
    const bookItem = document.querySelector(`.prod_item[data-book-id='\${bookId}']`);
    if (bookItem) {
        bookItem.remove(); // 리스트에서 아이템 제거
    } else {
        console.error(`No book item found with ID: \${bookId}`);
    }
}

    function returnBook(bookId) {
    console.log("Returning book with ID:", bookId);
    fetch(`/return/\${bookId}`, { method: 'POST' })
        .then(response => {
            if (response.ok) {
                updateStatus(bookId, '반납 완료');

                // ID가 존재하는지 확인한 후 요소를 삭제
                const bookItemElement = document.getElementById(`book-item-=\${bookId}`);
                if (bookItemElement) {
                    bookItemElement.remove();
                } else {
                    console.error(`Element with ID book-item-\${bookId} not found`);
                }

                // 확인 후 removeBookFromList 호출
                setTimeout(() => {
                    removeBookFromList(bookId);
                }, 1000); // 1초 후에 호출 (예: DOM 업데이트 기다리기)

                showModal(`책 반납이 완료되었습니다.`);
            } else {
                throw new Error('Failed to return the book.');
            }
        })
        .catch(error => console.error('Error:', error));
}



    function updateStatus(bookId, status) {
        const statusElement = document.querySelector(`#status-\${bookId}`);
        if (statusElement) {
            statusElement.textContent = `상태: \${status}`;
        } else {
            console.error(`No status element found for book ID: \${bookId}`);
        }
    }

    function showModal(message) {
        const modalMessage = document.getElementById('modalMessage');
        if (modalMessage) {
            modalMessage.innerText = message;
        }

        const statusModal = new bootstrap.Modal(document.getElementById('statusModal'));
        statusModal.show();

        // 모달을 닫는 기능도 추가해야 합니다.
    setTimeout(() => {
        statusModal.hide();
    }, 3000); // 3초 후에 모달 닫기
    }

</script>

<!-- Bootstrap JS and Popper.js -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<%@include file="../includes/end.jsp"%>
