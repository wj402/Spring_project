<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="../includes/header.jsp"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>도서관리</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${path}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/management.css">

</head>
<body>
<%--<h2>Book List</h2>--%>
<%--    <ul id="itembook">--%>
<%--        <c:forEach var="book" items="${books}">--%>
<%--            <li class="bodybook">--%>
<%--                <p>Book ID: ${book.id}</p>--%>
<%--                <p>Title: ${book.title}</p>--%>
<%--                <p>Author: ${book.author}</p>--%>
<%--                <p>Publisher: ${book.publisher}</p>--%>
<%--                <p>Publish Date: ${book.publishDate}</p>--%>
<%--                <p>Image URL: ${book.imageUrl}</p>--%>
<%--                <p>Borrowed: ${book.borrowed}</p>--%>
<%--            </li>--%>
<%--        </c:forEach>--%>
<%--    </ul>--%>
    <div class="man_box">
        <div class="man_container">
            <div class="man_inner">
                <div class="man_top">
                    <h1>도서관리</h1>
                    <p>등록된 도서품목들 입니다.</p>
                </div>
                <div>
                    <nav>
                      <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">도서목록</button>
                      </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                          <ol class="prod_list">
                                 <c:forEach var="book" items="${books}">
                                        <li class="prod_item">
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
                                                <button type="button" data-book-id="${book.id}" class="btn btn-dark borrow-btn">대여</button>
                                                <button type="button" data-book-id="${book.id}" class="btn btn-dark return-btn">반납</button>


                                                <div class="prod_status">
                                                    <span id="status-${book.id}" class="status">
                                                        <!-- 초기 상태 설정 -->
                                                        상태: ${book.borrowed ? '대여 중' : '대여 가능'}
                                                    </span>
                                                </div>
                                            </div>
                                        </li>

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
        document.querySelectorAll('.borrow-btn').forEach(button => {
            button.addEventListener('click', () => {
                const bookId = button.dataset.bookId;
                borrowBook(bookId);
            });
        });

        document.querySelectorAll('.return-btn').forEach(button => {
            button.addEventListener('click', () => {
                const bookId = button.dataset.bookId;
                returnBook(bookId);
            });
        });
    });

    function borrowBook(bookId) {
    console.log("Borrowing book with ID:", bookId);
    fetch(`/books/borrow/\${bookId}`, { method: 'POST' })
        .then(response => {
            if (response.ok) {
                updateStatus(bookId, '대여 중');
                showModal(`책 대여가 완료되었습니다.`);
            } else {
                throw new Error('Failed to borrow the book.');
            }
        })
        .catch(error => console.error('Error:', error));
}

function returnBook(bookId) {
    console.log("Returning book with ID:", bookId);
    fetch(`/books/return/\${bookId}`, { method: 'POST' })
        .then(response => {
            if (response.ok) {
                updateStatus(bookId, '대여 가능');
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
    }

</script>

<!-- Bootstrap JS and Popper.js -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%@include file="../includes/end.jsp"%>





