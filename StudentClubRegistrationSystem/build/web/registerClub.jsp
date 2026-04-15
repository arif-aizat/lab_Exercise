<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 3:34:21 pm
    Author     : AIZAT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
<body style="font-family: sans-serif; background-color: #f4f4f4; padding: 20px;">
    <div style="max-width: 800px; margin: auto; background: white; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
        <%@ include file="header.jsp" %>
        
        <div style="padding: 30px;">
            <h2>Club Registration Form</h2>
            <form action="processRegistration.jsp" method="post">
                <p>Student Name:<br><input type="text" name="studentName" required style="width: 100%; padding: 8px;"></p>
                <p>Matric Number:<br><input type="text" name="matricNo" required style="width: 100%; padding: 8px;"></p>
                <p>Choose Club:<br>
                    <select name="club" style="width: 100%; padding: 8px;">
                        <option>Computer Science Club</option>
                        <option>Food Hunting Club</option>
                        <option>Sleep Club</option>
                    </select>
                </p>
                <button type="submit" style="background: #d63642; color: white; border: none; padding: 10px 20px; cursor: pointer;">Submit Registration</button>
            </form>
        </div>

        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>