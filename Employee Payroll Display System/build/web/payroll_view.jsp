<%-- 
    Document   : payroll_view
    Created on : 29 Apr 2026, 3:53:09 pm
    Author     : AIZAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee Payroll System</title>
    <style>
        table { border-collapse: collapse; width: 80%; margin: 20px auto; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f4f4f4; }
    </style>
</head>
<body>

    <h2 style="text-align:center;">Employee Payroll List</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Basic Salary (RM)</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp" items="${employeeList}">
                <tr>
                    <td>${emp.empId}</td>
                    <td>${emp.name}</td>
                    <td>${emp.department}</td>
                    <td>${emp.basicSalary}</td>
                    <td>
                        <c:choose>
                            <c:when test="${emp.basicSalary >= 3000}">
                                <strong>Senior</strong>
                            </c:when>
                            <c:otherwise>
                                Junior
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
