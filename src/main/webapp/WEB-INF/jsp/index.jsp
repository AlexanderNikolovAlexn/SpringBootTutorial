<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>

<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>--%>
<%--<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>--%>

<%--<c:set var="ctx" value="${pageContext['request'].contextPath}"/>--%>
<html>
<head>
    <link rel='stylesheet' href='webjars/bootstrap/3.3.6/css/bootstrap.min.css'>

    <script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#btnRefresh').on('click',function () {
                $.ajax({
                    type: "GET",
                    url: "/getTime",
                    dataType: 'json',
                    success: function (data) {
                        console.log(data);
                        for(var k in data) {
                            $('#' + k).html(data[k]);
                        }
                    },
                    error: function (e) {
                        console.log("ERROR: ", e);
                    }
                });
            });
        });
    </script>
    <title>${homepage}</title>
</head>
<body>
<div class="container navbar-fixed-top">
    <h1>${homepage}</h1>
    <button id="btnRefresh" type="button" class="btn btn-default btn-md btn-info">
        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Refresh time
    </button>
    <p/>
    <div>Time is: <span id="time">${timeWithTimezone.time}</span>
                  <span id="timezone">${timeWithTimezone.timezone}</span></div>
</div>
<footer class="footer">
    <div class="container navbar-fixed-bottom">
        <p class="text-muted">My Footer inc</p>
    </div>
</footer>
</body>
</html>