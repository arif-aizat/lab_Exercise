<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 3:31:23 pm
    Author     : AIZAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Result</title>
</head>
<body>
    <%@include file="header.jsp" %>

    <div style="text-align: center; margin-top: 20px;">
        <h2>Your Calculation Result</h2>
        <%
            double bmiResult = Double.parseDouble(request.getParameter("bmiVal"));
            String category = request.getParameter("cat");
        %>

        <%-- Requirement 8: Format to 2 decimal places --%>
        <p>Your BMI: <strong><%= String.format("%.2f", bmiResult) %></strong></p>
        <p>Category: <strong><%= category %></strong></p>
        
        <br>
        <a href="bmiCalculator.jsp">Calculate Again</a>
    </div>

    <%@include file="footer.jsp" %>
</body>
</html>