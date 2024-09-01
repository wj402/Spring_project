document.addEventListener('DOMContentLoaded', function () {
    // btn_sitemap 버튼을 클릭했을 때 팝업을 띄우는 이벤트 핸들러
    const btnSitemap = document.querySelector('.btn_sitemap');
    const popGnb = document.getElementById('modal-gnb');
    const closeButton = document.querySelector('.j-gnb_menu_close');
    const gnbModal = document.querySelector('.gnbmodal');

    btnSitemap.addEventListener('click', function (event) {
        event.preventDefault(); // 기본 동작 방지
        popGnb.style.display = 'block'; // 팝업창 표시
    });

    // j-gnb_menu_close 버튼을 클릭했을 때 팝업을 닫는 이벤트 핸들러
    closeButton.addEventListener('click', function (event) {
        event.preventDefault(); // 기본 동작 방지
        popGnb.style.display = 'none'; // 팝업창 숨김
    });

    // gnbmodal을 클릭했을 때 팝업을 닫는 이벤트 핸들러
    gnbModal.addEventListener('click', function (event) {
        // 클릭한 요소가 gnbmodal-inner가 아닌 경우에만 팝업을 닫음
        if (event.target === gnbModal) {
            popGnb.style.display = 'none'; // 팝업창 숨김
        }
    });
});
