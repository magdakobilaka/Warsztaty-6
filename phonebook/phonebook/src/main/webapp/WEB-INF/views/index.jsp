<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 2020-02-02
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="header.jsp"/>
<main role="main" class="flex-shrink-0">
    <br>
    <div class="container">

        </div>
        <h1 class="display-3">Witaj na stronie głównej </h1>
        <button><a href="${contextPath}">Wyszujkaj kontakt</a></button>
        <button><a href="${contextPath}/records/list">Wszystkie kontanty</a></button>
        <button><a href="${contextPath}/records/edit">Dodoaj kontanty</a></button>
        <br>
    </div>
</main>
<jsp:include page="footer.jsp"/>

