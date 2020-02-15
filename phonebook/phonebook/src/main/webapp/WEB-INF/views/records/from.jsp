<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 2020-02-02
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}/records"/>
<html>
<style type="text/css">
    .error {
        color: red;
    }
</style>

<head>
    <title>Records</title>
</head>
<body>
<h1>Dodaj pozycje</h1>
<form:form action="${contextPath}" method="post" modelAttribute="records">
    <div>
        Nazwisko: <form:input path="surname"/>
        <form:errors path="surname" cssClass="error"/>
    </div>
    <div>
        Imie: <form:input path="name"/>
        <form:errors path="name" cssClass="error"/>
    </div>
    <div>
        Numer Telefonu: <form:input path="phonenumber"/>
        <form:errors path="phonenumber" cssClass="error"/>
    </div>
    <div>
        Miasto: <form:input path="citi"/>
        <form:errors path="citi" cssClass="error"/>
    </div>
    <div>
        Ulica: <form:input path="street"/>
        <form:errors path="street" cssClass="error"/>
    </div>
    <div>
       Numer domu: <form:input path="flatnumber"/>
        <form:errors path="flatnumber" cssClass="error"/>
    </div>
    <div>
        <input type="submit" value="Save">
    </div>
</form:form>
</body>
</html>
