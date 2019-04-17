<%--
  Created by IntelliJ IDEA.
  User: SS555
  Date: 2/28/2019
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript">
    studentTable();

</script>

<table id="studentList" class="display" style="width:100%">
    <thead>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Parent</th>
        <th>Birthdate</th>
        <th>Phone</th>
        <th>Gmail</th>
        <th>Gmail Code</th>
        <th>Gender</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${students}" var="student">
        <tr>
            <td>${student.name}</td>
            <td>${student.surname}</td>
            <td>${student.parent}</td>
            <td><fmt:formatDate value="${student.birthDate}" pattern="dd/MM/yyyy"/></td>
            <td>${student.phone}</td>
            <td>${student.gmail}</td>
            <td>${student.gmailCode}</td>
            <td>${student.gender}</td>
            <td>${student.status}</td>
        </tr>
    </c:forEach>
    </tbody>
    <tfoot>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Parent</th>
        <th>Birthdate</th>
        <th>Phone</th>
        <th>Gmail</th>
        <th>Gmail Code</th>
        <th>Gender</th>
        <th>Status</th>
    </tr>
    </tfoot>
</table>