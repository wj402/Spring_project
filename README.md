# 📖 [구름책방] 도서관리 프로젝트 README

![main](https://github.com/user-attachments/assets/c8e45d8d-c9a1-4b55-8bef-d395ad687b27)


- 배포 URL : https://wj402.netlify.app
- Test ID : user1
- Test PW : 1111

<br>

## 프로젝트 소개
-  구름책방은 책을 구름처럼 가벼운마음으로 대여 반납하고 접할수있게 만들고싶은 마음으로 프로젝트를 만들었습니다.
-  전반적인 도서 관리 기능 구현 여러가지 조건에 따른 조회, 정렬, 검색 및 페이징처리 등 도서관리 및 게시판 CRUD를 구현해보았고 사용자입장에서 필요한 사항을 생각하며 기능을 구현해보았습니다

<br>

## 개발 환경
- 학습 도구 : IntelliJ
- 사용언어 : JAVA
- 디자인패턴 : MVC
- DB : MySQL

<br>

## 프로젝트 기간
- 전체 개발 기간 : 2024-07-12 ~ 2024-08-31
- 게시판 개발 : 2024-07-12 ~ 2024-07-27
- 도서관리 개발 : 2024-07-27 ~ 2024-08-31

<br>

## 프로젝트 구조

```
+---.gradle
+---.idea
+---.smarttomcat
+---build
+---gradle
+---out
|   +---production
|   |   +---classes
|   |   |   \---org
|   |   |       \---zerock
|   |   |           \---ex00
|   |   |               +---aop
|   |   |               +---controller
|   |   |               +---domain
|   |   |               +---mappers
|   |   |               +---sample
|   |   |               +---security
|   |   |               |   \---handler
|   |   |               +---service
|   |   |               |   \---exception
|   |   |               \---util
|   |   \---resources
|   |       +---mappers
|   |       \---static
|   |           +---css
|   |           +---img
|   |           |   +---book
|   |           |   |   \---main
|   |           |   +---card
|   |           |   +---content1
|   |           |   +---content2
|   |           |   +---content3
|   |           |   +---icon
|   |           |   \---management
|   |           +---js
|   |           |   \---demo
|   |           +---scss
|   |           |   +---navs
|   |           |   \---utilities
|   |           \---vendor
|   |               +---bootstrap
|   |               |   +---js
|   |               |   \---scss
|   |               |       +---mixins
|   |               |       +---utilities
|   |               |       \---vendor
|   |               +---chart.js
|   |               +---datatables
|   |               +---fontawesome-free
|   |               |   +---css
|   |               |   +---js
|   |               |   +---less
|   |               |   +---metadata
|   |               |   +---scss
|   |               |   +---sprites
|   |               |   +---svgs
|   |               |   |   +---brands
|   |               |   |   +---regular
|   |               |   |   \---solid
|   |               |   \---webfonts
|   |               +---jquery
|   |               \---jquery-easing
|   \---test
|       \---classes
|           \---org
|               \---zerock
|                   \---ex00
|                       +---mappers
|                       +---sample
|                       +---security
|                       \---service
\---src
    +---main
    |   +---generated
    |   +---java
    |   |   \---org
    |   |       \---zerock
    |   |           \---ex00
    |   |               +---aop
    |   |               +---controller
    |   |               +---domain
    |   |               +---mappers
    |   |               +---sample
    |   |               +---security
    |   |               |   \---handler
    |   |               +---service
    |   |               |   \---exception
    |   |               \---util
    |   +---resources
    |   |   +---mappers
    |   |   \---static
    |   |       +---css
    |   |       +---img
    |   |       |   +---book
    |   |       |   |   \---main
    |   |       |   +---card
    |   |       |   +---content1
    |   |       |   +---content2
    |   |       |   +---content3
    |   |       |   +---icon
    |   |       |   \---management
    |   |       +---js
    |   |       |   \---demo
    |   |       +---scss
    |   |       |   +---navs
    |   |       |   \---utilities
    |   |       \---vendor
    |   |           +---bootstrap
    |   |           |   +---js
    |   |           |   \---scss
    |   |           |       +---mixins
    |   |           |       +---utilities
    |   |           |       \---vendor
    |   |           +---chart.js
    |   |           +---datatables
    |   |           +---fontawesome-free
    |   |           |   +---css
    |   |           |   +---js
    |   |           |   +---less
    |   |           |   +---metadata
    |   |           |   +---scss
    |   |           |   +---sprites
    |   |           |   +---svgs
    |   |           |   |   +---brands
    |   |           |   |   +---regular
    |   |           |   |   \---solid
    |   |           |   \---webfonts
    |   |           +---jquery
    |   |           \---jquery-easing
    |   \---webapp
    |       \---WEB-INF
    |           +---spring
    |           \---views
    |               +---board
    |               +---book
    |               +---includes
    |               +---member
    |               \---sample
    \---test
        +---generated_tests
        +---java
        |   \---org
        |       \---zerock
        |           \---ex00
        |               +---mappers
        |               +---sample
        |               +---security
        |               \---service
        \---resources

```

<br>

## 페이지별 기능

<br>

### [메인화면]
- 홈페이지 접속 초기화면입니다.
- 자동 슬라이드 기능이 되어있습니다.
  
| 메인화면 |
|----------|
![-Chrome2024-09-0514-33-23-ezgif com-speed (1)](https://github.com/user-attachments/assets/c5feb64e-49ef-4e30-9921-2fdbe84db993)

<br>

### [메인페이지]
- 메인페이지입니다. 
- 컨텐츠영역에는 자동슬라이드로 되어있습니다.
- 로그인 기능, 공지사항(게시판) 기능, 책(반납,대여,상세)등 도서관리가 구현되어있습니다.

| 메인페이지 |
|------------|
![main_content-ezgif com-speed](https://github.com/user-attachments/assets/e9b5a50f-7d30-4d3e-b69e-364e6aaf1167)

<br>

### [로그인]
- 로그인 아이디는 user1~user99까지 테스트로 만들었습니다.
- 비밀번호는 모두 1111입니다.
- 로그인 인증을 해야 공지사항(게시판), 도서관리(대여,반납)을 이용하실 수 있습니다.
- 회원가입의 기능은 구현되어있지 않습니다.

| 로그인 |
|--------|
![login-ezgif com-speed](https://github.com/user-attachments/assets/ead43aae-0834-432a-bef7-8ccc8a92fc0c)


<br>

### [도서관리]
- 등록된 전체 도서품목들을 보여줍니다.
- 도서목록을 보여주고 반납, 대여를 할 수 있으며 반납,대여 버튼을 누를경우 상태메시지창과 함께 상태에 대여중, 대여가능으로 바뀝니다.
- 도서를 클릭하면 상세페이지로 넘어갈 수 있습니다.


| 도서관리 |
|----------|
![book-ezgif com-speed](https://github.com/user-attachments/assets/f122b743-4178-4d2e-b5d4-a13244565711)

<br>

### [도서상세]
- 도서관리, 반납, 대여 페이지에서 책박스를 클릭하면 상세정보 페이지로 넘어갑니다.
- 상세페이지 제목, 저자, 줄거리 등의 정보를 얻을 수 있습니다.
- 바로구매 버튼을 누르면 구매페이지로 이동합니다.
- 소장정보에서 반납, 대여를 하실 수 있습니다.

| 도서상세 |
|----------|
![detail-ezgif com-speed](https://github.com/user-attachments/assets/5d094e19-6d0d-4cc4-ada9-ff70d3674760)

<br>

### [반납]
- 반납페이지부터는 로그인을 해야지 반납을 할 수 있습니다.
- 반납버튼을 누르면 반납되었다는 메세지를 출력합니다.
- 반납이 되었기때문에 반납페이지에서 삭제가 됩니다.

| 반납 |
|------|
![borrow-ezgif com-speed](https://github.com/user-attachments/assets/2f59064a-0b02-409b-ba71-5ee0d9d234bb)

<br>

### [대여]
- 현재 대여 중인 도서 목록을 보여줍니다.
- 대여페이지 또한 로그인 인증이 되어야 할 수 있습니다.
- 대여버튼을 누르면 대여되었다는 메세지를 출력합니다.
- 대여가 되었기때문에 대여페이지에서 삭제가 됩니다.

| 대여 |
|------|
![ezgif com-speed](https://github.com/user-attachments/assets/9700c1f6-ecf8-4780-ad63-f334192b1fc8)

<br>

### [공지사항 게시판]
- 공지사항, 고객센터를 클릭하면 공지사항으로 이동하게 됩니다.
- 공지사항을 볼수는 있지만 글쓰기, 글쓴내용 등을 볼려면 로그인 인증을 거쳐야 합니다.
- 공지사항에서 글쓰기, 수정, 삭제, 댓글, 검색, 페이징넘버처리 까지 기능을 구현했습니다.

| 공지사항 게시판 |
|-----------------|
![ezgif com-speed (1)](https://github.com/user-attachments/assets/c3bba12b-c8e4-4e99-9197-e068b9d1a480)


<br>

### [검색]
- 공지사항 게시판을 검색할 수 있는 기능을 구현 했습니다.
- (제목 + 내용), 제목, 내용, 작성자 이렇게 검색할수 있도록 나눴습니다.

| 검색 |
|------|
![ezgif com-speed (2)](https://github.com/user-attachments/assets/0e95a50f-f54e-45d7-8e95-5fc467c5de38)

<br>

### [글쓰기]
- 글쓰기 버튼을 누르면 제목,내용, 이미지사진을 올릴 수 있습니다.
- 글작성을 하면 차례대로 번호가 주어집니다.
- 수정과 삭제는 만든 작성자만 변경할 수 있습니다.

| 글쓰기 |
|--------|
![ezgif com-speed (4)](https://github.com/user-attachments/assets/ac4e55fb-ffe4-4d36-988f-804c36aa2f39)

<br>

### [글수정]
- 자신의 게시글일 경우 버튼을 통해 수정이 가능합니다.
- 타 유저의 게시글일 경우 수정이 안됩니다.

| 수정 |
|------|
![ezgif com-speed (5)](https://github.com/user-attachments/assets/c753bbb9-f7c3-49a3-9193-b0d3d7ae5f69)

<br>

### [글삭제]
- 자신의 게시글일 경우 버튼을 통해 삭제가 가능합니다.
- 삭제버튼을 누르면 위에 메시지창이 띄워지고 그리고 삭제가됩니다.
- 삭제가 되면 글에 삭제가 되었습니다라는 메시지가 띄워집니다.

| 삭제 |
|------|
![ezgif com-speed (6)](https://github.com/user-attachments/assets/e36c1eaf-6864-467a-992c-9cb0123c7a23)

<br>


### [댓글]
- 게시글 어디서든 댓글을 달수 있습니다. 댓글 또한 본인 아이디가 아니면 수정,삭제 버튼이 안됩니다.
- 수정버튼을 누르면 메시지창으로 변경이 가능합니다.
- 삭제버튼은 삭제메시지 창이 한번 더 나오게 되는데 거기서 확인버튼을 누르면 삭제가 됩니다.
- 댓글이 많을경우 페이징넘버처리까지 구현했습니다.

| 댓글 |
|------|
![ezgif com-speed (7)](https://github.com/user-attachments/assets/c5c65722-de13-4f88-be33-49bda28d9fe9)

<br>

## 프로젝트 후기
- 도서 관리 프로그램은 실제 사용 사례를 염두에 두고 설계해 보았으며, 반복적인 MVC 패턴과 RESTful API를 설계하여 클라이언트와 서버 간의 통신을 구현해보았다 처음부터 끝까지 혼자 작업해보면서 많은 오류들을 만났지만 하나씩 해결할때마다 그동안 공부했던것들이 정리 되면서 조금씩 성장함을 느꼈다.
