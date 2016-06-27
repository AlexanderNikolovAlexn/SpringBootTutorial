<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel='stylesheet' href='webjars/bootstrap/3.3.6/css/bootstrap.min.css'>

    <script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <title>${homepage}</title>
</head>
<body>
<div class="container navbar-fixed-top">
    <h1>${homepage}</h1>
    <%@ include file="header.jsp" %>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>