<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:31:33 pm
    Author     : AIZAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Requirement 9: Page Directive to import ArrayList --%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <title>Health Information</title>
    <style>
        table { border-collapse: collapse; width: 50%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>

    <h2>BMI Categories Reference</h2>

    <%
        // Requirement 9: Store categories in ArrayList
        ArrayList<String[]> categories = new ArrayList<>();
        categories.add(new String[]{"Below 18.5", "Underweight"});
        categories.add(new String[]{"18.5 - 25.0", "Normal"});
        categories.add(new String[]{"Above 25.0", "Overweight"});
    %>

    <table>
        <tr>
            <th>BMI Range</th>
            <th>Category</th>
        </tr>
        <%-- Requirement 9: Display categories dynamically --%>
        <% for(String[] row : categories) { %>
            <tr>
                <td><%= row[0] %></td>
                <td><%= row[1] %></td>
            </tr>
        <% } %>
    </table>

    <%@include file="footer.jsp" %>
</body>
</html>