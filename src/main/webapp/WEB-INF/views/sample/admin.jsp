<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 24. 7. 26.
  Time: 오전 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<html>
  <head>
    <title>admin</title>
  </head>
  <body>
  <h1>admin</h1>

  <div>
    <sec:authentication property="principal" />
  </div>

  <div>
    <sec:authentication property="principal.email" />
  </div>

  <div>
    <sec:authentication property="principal.uname" />
  </div>

  </body>
</html>
