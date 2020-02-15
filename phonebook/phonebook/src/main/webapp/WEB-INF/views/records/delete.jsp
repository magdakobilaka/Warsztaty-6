<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 2020-02-02
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}/records"/>
<html>
<head>
    <title>Usuń</title>
</head>
<body>
<p>
    Napewno chcesz usunąć tę pozycję ?
</p>
<div>
    <button><a href="${contextPath}/delete-action/${recordId}?action=true"> Tak </a></button>
    <button><a href="${contextPath}/delete-action/${recordId}?action=false"> Nie</a></button>
</div>
</body>
</html>
