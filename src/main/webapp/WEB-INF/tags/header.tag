<%@ tag %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Firely</title>


<!-- Page title set in pageTitle directive -->
<title page-title></title>

<!-- Bootstrap and Fonts -->
<link href="/resources/css/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Main Inspinia CSS files -->
<link href="/resources/css/css/animate.css" rel="stylesheet">
<link href="/resources/css/css/style.css" rel="stylesheet">

<script src="<c:url value="/resources/js/angular/angular.min.js" />"></script>
<script src="<c:url value="/resources/js/angular/angular-route.min.js" />"></script>
<script src="<c:url value="/resources/js/angular/angular-resource.min.js" />"></script>
<script src="<c:url value="/resources/js/angular/angular-sanitize.min.js" />"></script>


<div id="wrapper">

    <div id="page-wrapper" class="gray-bg {{$state.current.name}}">

        <!-- Page wrapper -->
        <div ng-include="'topnav.tag'"></div>

    </div>
</div>