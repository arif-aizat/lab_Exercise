<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 3:35:04 pm
    Author     : AIZAT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <title>Club Member Directory</title>
    <style>
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th { background-color: #004a99; color: white; padding: 12px; text-align: left; }
        td { border: 1px solid #ddd; padding: 10px; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        tr:hover { background-color: #ddd; }
    </style>
</head>
<body style="font-family: sans-serif; background-color: #f4f4f4; padding: 20px;">

    <div style="max-width: 900px; margin: auto; background: white; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); overflow: hidden;">
        
        <%-- Requirement 2: Include Header --%>
        <%@ include file="header.jsp" %>
        
        <div style="padding: 30px;">
            <h2 style="color: #333; border-left: 5px solid #004a99; padding-left: 10px;">Committee Member Directory</h2>
            
            <table>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Student Name</th>
                        <th>Matric Number</th>
                        <th>Selected Club</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Retrieve the global list (storing String arrays)
                        ArrayList<String[]> members = (ArrayList<String[]>) application.getAttribute("globalMemberList");
                        
                        if (members == null || members.isEmpty()) {
                    %>
                        <tr>
                            <td colspan="4" style="text-align: center; padding: 20px; color: #888;">
                                No registrations found. Please go to the Registration page.
                            </td>
                        </tr>
                    <%
                        } else {
                            // Loop through the ArrayList
                            for (int i = 0; i < members.size(); i++) {
                                // Extract the array for the current student
                                String[] student = members.get(i);
                    %>
                        <tr>
                            <td><%= (i + 1) %></td>
                            <td><%= student[0] %></td> <%-- Name --%>
                            <td><%= student[1] %></td> <%-- Matric --%>
                            <td><%= student[2] %></td> <%-- Club --%>
                        </tr>
                    <% 
                            }
                        } 
                    %>
                </tbody>
            </table>
            
            <div style="margin-top: 20px; text-align: right;">
                <p>Total Members: <strong><%= (members != null) ? members.size() : 0 %></strong></p>
            </div>
        </div>

        <%-- Requirement 2: Include Footer --%>
        <%@ include file="footer.jsp" %>
        
    </div>
</body>
</html>