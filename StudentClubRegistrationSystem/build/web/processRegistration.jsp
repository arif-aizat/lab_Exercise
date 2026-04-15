<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 3:34:34 pm
    Author     : AIZAT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%
    // 1. Change the ArrayList type to String[] to hold {Name, Matric, Club}
    ArrayList<String[]> allMembers = (ArrayList<String[]>) application.getAttribute("globalMemberList");
    
    // 2. Initialize the list if it doesn't exist
    if (allMembers == null) {
        allMembers = new ArrayList<String[]>();
        // Add a default member with all three details
        allMembers.add(new String[]{"Mohamad Azam", "s24001", "Computer Science Club"});
        application.setAttribute("globalMemberList", allMembers);
    }

    // 3. Retrieve all three inputs from the form
    String newName = request.getParameter("studentName");
    String newMatric = request.getParameter("matricNo");
    String newClub = request.getParameter("club");

    // 4. Store them as an array if the name is provided
    if (newName != null && !newName.trim().isEmpty()) {
        allMembers.add(new String[]{newName, newMatric, newClub});
    }

    // Save the updated list
    application.setAttribute("globalMemberList", allMembers);
%>
<!DOCTYPE html>
<html>
<head><title>Success</title></head>
<body style="font-family: sans-serif; background-color: #f4f4f4; padding: 20px;">
    <div style="max-width: 800px; margin: auto; background: white; border-radius: 8px;">
        <%@ include file="header.jsp" %>
        <div style="padding: 30px; text-align: center;">
            <h2 style="color: #28a745;">Registration Successful!</h2>
            <p>Welcome to the club, <strong><%= newName %></strong>!</p>
            <p>Matric Number: <%= newMatric %></p>
            <p>Selected Club: <%= newClub %></p>
            
            <a href="memberDirectory.jsp" style="display: inline-block; margin-top: 20px; padding: 10px; background: #004a99; color: white; text-decoration: none; border-radius: 4px;">View Member Directory</a>
        </div>
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>