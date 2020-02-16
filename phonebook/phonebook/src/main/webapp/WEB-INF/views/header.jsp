<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 2020-02-02
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<html lang="pl">
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="ISO-8859-1" %>
<c:url value="/" var="mainURL"/>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Ksi??ka Telefoniczna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Romanesco&display=swap&subset=latin-ext" rel="stylesheet">
</head>
<style>
    b{
        font-family: 'Open Sans', sans-serif;
        font-size: 30px;
        color:saddlebrown;
    }
</style>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <ul class="navbar-nav mr-auto">
            <b style="vertical-align: inherit;">Ksiazka Telefoniczna</font> </font> </b></ul>
        <i class="fas fa-book-open"></i>
        </ul>
        <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link " href="${contextPath}/records/search"> <font
                            style="vertical-align: inherit;">
                        <font
                                style="vertical-align: inherit;">Wyszujkaj kontakt</font> </font> <span
                            class="sr-only"> <font style="vertical-align: inherit;"> <font
                            style="vertical-align: inherit;"> (bie??ca) </font> </font> </span> </a>
                </li>
                <li class="nav-item  ml-auto">
                    <a class="nav-link" href="${contextPath}/records/list"> <font style="vertical-align: inherit;">
                        <font
                                style="vertical-align: inherit;">Wszystkie kontanty</font> </font> </a>
                </li>
                <li class="nav-item  ml-auto">
                    <a class="nav-link" href="${contextPath}/records/form"> <font style="vertical-align: inherit;">
                        <font
                                style="vertical-align: inherit;">Dodaj kontanty</font> </font> </a>
                </li>

            </ul>

        </div>
    </nav>
</header>
</body>
</html>
