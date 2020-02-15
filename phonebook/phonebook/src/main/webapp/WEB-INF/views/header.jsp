<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 2020-02-02
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="ISO-8859-1" %>
<c:url value="/" var="mainURL"/>
<html lang="pl" class="h-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Ksi??ka Telefoniczna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <a class="navbar-brand .d-flex justify-content-end " href="#"> <font style="vertical-align: inherit;"> <font
                style="vertical-align: inherit;"> Ksi??ka Telefoniczna </font> </ font > </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="# navbarColor03"
                aria-control="navbarColor03" aria-expanded="false" aria-label="przegl?daj nawigacj? ?>
    <span class = " navbar-toggler-icon></button>
         </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${contextPath}"> <font style="vertical-align: inherit;"> <font
                            style="vertical-align: inherit;">Wyszujkaj kontakt</font> </font > <span
                            class="sr-only"> <font style="vertical-align: inherit;"> <font
                            style="vertical-align: inherit;"> (bie??ca) </font> </font> </span> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="href="${contextPath}/records/list"> <font style="vertical-align: inherit;"> <font
                            style="vertical-align: inherit;">Wszystkie kontanty</font> </font> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="${contextPath}/records/form"> <font style="vertical-align: inherit;"> <font
                            style="vertical-align: inherit;">Dodoaj kontanty</font> </font> </a>
                </li>

            </ul>

        </div>
    </nav>
</header>
</body>
</html>
