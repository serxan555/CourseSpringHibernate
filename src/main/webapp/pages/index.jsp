<%--
  Created by IntelliJ IDEA.
  User: SS555
  Date: 2/27/2019
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>SS555</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.min.css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#sentBtn').click(function () {
                addStudent();
            })
        })
    </script>
</head>
<body>
<div>
    <input id="name" type="text" name="name" title="Name" class="inputField"/>
    <input id="surname" type="text" name="surname" title="Surname" class="inputField"/>
    <input id="parent" type="text" name="parent" title="Parent" class="inputField"/>
    <input id="datepickerForStudent" type="date" title="Birthdate" name="birthdate" class="inputField"/>
    <input id="phone" type="text" name="phone" title="Phone" class="inputField"/>
    <input id="gmail" type="text" name="gmail" title="Gmail" class="inputField"/>
    <input id="gmailCode" type="text" name="gmailCode" title="Gmail Code" class="inputField"/>
    <div class="gender">
        <input id="MaleAddStudent" type="radio" value="Male" name="genderAddStudent"/>
        <label for="MaleAddStudent"> Male </label>
        <input id="FemaleAddStudent" type="radio" value="Female" name="genderAddStudent"/>
        <label for="FemaleAddStudent"> Female</label> <br>
    </div>
    <input id="sentBtn" type="button" value="Send value" class="saveBtn"/>
</div>

    <div style="width: 80%;margin: 0 auto;">
        <%@include file="parts/part-student-table.jsp"%>
    </div>
</body>
</html>
