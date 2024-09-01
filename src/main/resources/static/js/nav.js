
console.log('false')
/***********************************************************************************************************************
 * 상수 >>>>
 **********************************************************************************************************************/
var MEDIA_QUERY_PC = 'PC', MEDIA_QUERY_MOBILE = 'MOBILE';
/***********************************************************************************************************************
 * 상수 <<<<
 **********************************************************************************************************************/

var CONTEXT = '/nedu'; // context
var SEVLET_PATH = '/WEB-INF/views/base/layout/templateMain.jsp';
var REQUEST_URL = 'https://www.edunet.net/nedu/WEB-INF/views/base/layout/templateMain.jsp';
var BASE_URL = 'https://www.edunet.net/nedu'; // base URL

var IS_MOBILE_LAYOUT = false; // 반응형 여부
var IS_MOBILE_MOVIE = false; // 149번 서버의 MP4동영상 여부

var IS_MOBILE = false; // 모바일 여부
var IS_TABLET = false; // 테블릿 여부
var IS_PC = true; // PC여부 (모바일,테블릿 외에는 전부 PC로 본다.)
var USER_DEVICE_TYPE = 'COMPUTER'; // 사용자 DEVICE 유형
var NEDU_SERVER_NAME = 'https://www.edunet.net'; // 사용자 DEVICE 유형

var IS_ANDROID = false; // 안드로이드OS 여부
var IS_MAC = false; // 맥OS 여부
var IS_WINDOW = true; // 윈도우OS 여부
var USER_OS_TYPE = 'WINDOWS_10'; // 사용자 OS 유형
var USER_AGENT = 'WINDOWS_10-CHROME12'; // 사용자 에이전트

var IS_IOS_DEVICE = false; // iOS 기기 여부
var IS_SAFARI_BROWSER = false; // 사파리 브라우저 여부

var IS_IEXPLORE = ((navigator.appName == 'Microsoft Internet Explorer') || ((navigator.appName == 'Netscape') && (new RegExp("Trident/.*rv:([0-9]{1,}[\.0-9]{0,})").exec(navigator.userAgent) != null)));

var SITE_TYPE = ''; // 사이트 타입
var IS_OUTSIDE_LOGIN = 'false'; // 외부로그인 여부

var COMM_MSG = { // 공통 메세지
    INFO_NEED_LOGIN : '로그인이 필요한 서비스입니다.',
    INFO_TEACHER_ONLY_ACCESS : '교사만 이용 가능한 서비스입니다.'
};

var CURR_MEDIA_QUERY = MEDIA_QUERY_PC; // 현재 Media Query

var NOW_HM = 202408091150;
var NOW  = (NOW_HM-NOW_HM%10000)/10000;
var DAY  = NOW%100;
var MON  = (NOW-DAY)/100%100;
var YEAR = (NOW-MON*100-DAY)/10000;
var SESSIONTIME = 1800;
var IS_LOCAL = false;



//GNB 메뉴 open 이벤트
$(document).ready(function(){
    // 페이지 로드 시 메뉴를 닫힌 상태로 초기화
    $('.gnb_menu').hide(); // 메뉴를 숨김
    $('#categoryId li').removeClass('over'); // 메뉴 항목에 대한 모든 'over' 클래스 제거

    // 메뉴 아이템 클릭 이벤트 핸들러
    $('#categoryId li').click(function(){
        $('.menu_item_m01').hide();
        var num = $(this).index();
        if($('.gnb_menu').is(':visible') == false){
            $('#categoryId li').eq(num).addClass('over');
            $('.menu_item_m01').eq(num).show();
            $('.gnb_menu').slideDown(200);
        } else {
            $('.menu_item_m01').hide();
            $('#categoryId li').removeClass('over');
            $('#categoryId li').eq(num).addClass('over');
            $('.menu_item_m01').eq(num).show();
        }
    });

    // 닫기 버튼 이벤트
    $('.j-gnb_menu_close').click(function(){
        $('.gnb_menu').slideUp(200);
        $('#categoryId li').removeClass('over');
    });

    if(!IS_MOBILE){ // 웹일 경우
        $('#categoryId li').hover(function(){
            $('.menu_item_m01').hide();
            var num = $(this).index();
            if($('.gnb_menu').is(':visible') == false){
                $('#categoryId li').eq(num).addClass('over');
                $('.menu_item_m01').eq(num).show();
                $('.gnb_menu').slideDown(200);
            } else {
                $('.menu_item_m01').hide();
                $('#categoryId li').removeClass('over');
                $('#categoryId li').eq(num).addClass('over');
                $('.menu_item_m01').eq(num).show();
            }
        });

        $('.gnb_menu').mouseleave(function(){
            $('.gnb_menu').slideUp(200);
            $('#categoryId li').removeClass('over');
        });
    }


});

/*
var EDUNET_COMMON_HEADER_IS_LOGIN = false;
var EDUNET_COMMON_HEADER_JOB_TYPE = '';
$('.gnbmodalCon .top_menu').ready(function(){


    $('.j-lnkLogout').bind('click', function(e) {
        goLogout();
        return false;
    });
    $('.j-lnkLogin').bind('click', function(e) {
        goLogin();
        return false;
    });
});
*/
