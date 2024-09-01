<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="../includes/header.jsp"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>상세페이지</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${path}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/detail.css">

</head>

<body>

<div class="details">
    <div class="details_container">
        <h1>책 분류별 상세페이지</h1>
        <div class="details_inner">
            <div class="book_detail">
                <img src="${book.imageUrl}" alt="${book.title}" class="img-fluid" />
            </div>
            <div class="book_text">

                <ul>
                  <li class="book_title">
                        <p><strong>${book.title}</strong> </p>
                  </li>
                  <li class="book_title_inner">
                        <p> ${book.author} | ${book.publisher} </p>
                  </li>
                  <li class="book_box">
                        <p> ${book.summery}</p>
<%--                        <p> 책 번호 : ${book.id}번 </p>--%>
                  </li>
                  <li class="book_buy_button">
                    <a href="${book.buy}" class="buy_button">바로구매</a>
                  </li>
                </ul>
            </div>
        </div>
        <div class="prod_box">
            <h2>소장정보</h2>
            <li class="prod_item">
                <div class="prod_img_box">
                    <div class="prod_thumb_box">
                        <a href="${path}/books/detail/${book.id}" class="prod_link prod_box_link">
                            <span class="img_box">
                                <!-- 이미지 URL을 BookVO의 imageUrl로 대체 -->
                                <img src="${book.imageUrl}" alt="${book.title}"/>
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
