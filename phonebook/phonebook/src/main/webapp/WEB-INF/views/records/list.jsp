<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 2020-02-02
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="views/header.jsp"/>
<c:url value="/" var="mainURL"/>
<main role="main" class="flex-shrink-0">
    <br>
    <div class="container">
        <div class="rounded border p-5">

            <div class="form-row">
                <div class="form-group col-md-8">
                    <h4 class="cover-heading">Lista Kontaktów</h4>
                </div>
            </div>
            <button>
                <a href="${contextPath}">Dodaj nowy numer</a>
            </button>
            <button>
                <a href="/">Back</a>
            </button>
            <button>
                <a href="${contextPath}/filters">Filters</a>
            </button>


            <c:choose>
                <c:when test="${records.size() == 0}">
                    <h1 class="error">Nie znaleziono kontaktów</h1>
                </c:when>
                <c:otherwise>
                    <table style="width:100%">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Surname</th>
                            <th>Name</th>
                            <th>Citi</th>
                            <th>Street</th>
                            <th>Flatnumber</th>
                            <th>Phonenumber</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${records}" var="record">
                            <tr>
                                <td>${record.id}</td>
                                <td>${record.surname}</td>
                                <td>${record.name}</td>
                                <td>${record.citi}</td>
                                <td>${record.street}</td>
                                <td>${record.flatnumber}</td>
                                <td>${record.phonenumber}</td>
                                <td>
                                    <button><a href="${contextPath}/edit/${record.id}"> Edit </a></button>
                                    <button><a href="${contextPath}/delete/${record.id}"> Delete </a></button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</main>
<jsp:include page="views/footer.jsp"/>