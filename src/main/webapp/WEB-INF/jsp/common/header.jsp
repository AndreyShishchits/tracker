<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="author" content="Andrey Shischits">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        TaskTracker
    </title>
    <link rel="stylesheet" href="${path}/webjars/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/static/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">
    <script type="text/javascript" src="${path}/webjars/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${path}/webjars/bootstrap/3.2.0/js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="${path}/static/js/main.js"></script>
</head>