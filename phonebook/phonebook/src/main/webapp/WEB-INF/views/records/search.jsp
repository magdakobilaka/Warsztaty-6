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
<jsp:include page="/WEB-INF/views/header.jsp"/>
<c:url value="/" var="mainURL"/>
<main role="main" class="flex-shrink-0">
    <br>
    <div class="container">
        <div class="rounded border p-5">

            <div class="form-row">
                <div class="form-group col-md-8">
                    <h2 class="cover-heading">Szukaj konta</h2>
                    <form:form action="${contextPath}/search" method="post" modelAttribute="record">
                    <form:hidden path="id"/>
                    <div>
                        Nazwisko: <form:input path="surname"/>
                        <form:errors path="surname" cssClass="error"/>
                    </div>
                <div>
                    Miasto: <form:input path="city"/>
                    <form:errors path="city" cssClass="error"/>
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
                    <input type="submit" value="Szukaj">
                </div>
                </form:form>
            </div>

        </div>
    </div>
    </div>
</main>
<jsp:include page="/WEB-INF/views/footer.jsp"/>

