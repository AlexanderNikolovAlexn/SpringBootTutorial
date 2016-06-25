<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>

<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>--%>
<%--<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>--%>

<%--<c:set var="ctx" value="${pageContext['request'].contextPath}"/>--%>
<html>
<head>
    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
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
<h1>${homepage}</h1>
<button id="btnRefresh">Refresh time</button>
<br/>
<div>Time is: <span id="time">${timeWithTimezone.time}</span>
              <span id="timezone">${timeWithTimezone.timezone}</span></div>
</body>
</html>