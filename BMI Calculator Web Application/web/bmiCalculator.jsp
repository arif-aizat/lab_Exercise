<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:30:29 pm
    Author     : AIZAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>BMI Calculator</title>
        <style>
            body {
                font-family: Arial;
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            .card {
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                width: 300px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %> <%-- Requirement 2 --%>

        <div class="card">
            <h2>BMI Input Form</h2>
            <form action="processBMI.jsp" method="post">
                <p>Weight (kg): <br>
                    <input type="number" step="0.1" name="weight" required></p>

                <p>Height (m): <br>
                    <input type="number" step="0.01" name="height" required></p>

                <button type="submit">Calculate BMI</button>
            </form>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
