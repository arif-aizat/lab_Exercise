<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 3:34:52 pm
    Author     : AIZAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Fee Calculator</title></head>
<body style="font-family: sans-serif; margin: 0;">
    <%@ include file="header.jsp" %>
    
    <div style="padding: 20px; max-width: 400px; margin: auto;">
        <h2>Membership Fee Calculator</h2>
        <form method="post">
            Number of activities joined: 
            <input type="number" name="activityCount" min="0" required>
            <input type="submit" value="Calculate">
        </form>

        <%
            String countStr = request.getParameter("activityCount");
            if(countStr != null) {
                int count = Integer.parseInt(countStr);
                double totalFee = count * 10.00;
        %>
            <div style="margin-top: 20px; padding: 10px; background: #eef;">
                <strong>Total Amount:</strong> RM <%= String.format("%.2f", totalFee) %>
            </div>
        <% } %>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
