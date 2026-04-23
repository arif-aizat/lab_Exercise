<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:31:10 pm
    Author     : AIZAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Requirement 5: Retrieve and Convert
    String weightStr = request.getParameter("weight");
    String heightStr = request.getParameter("height");

    double weight = 0, height = 0, bmi = 0;
    String category = "";

    try {
        weight = Double.parseDouble(weightStr);
        height = Double.parseDouble(heightStr);

        // Requirement 10: Height must not be zero
        if (height > 0) {
            // Requirement 5: Calculate BMI (weight / height^2)
            bmi = weight / (height * height);

            // Requirement 8: Category logic
            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi <= 25) {
                category = "Normal";
            } else {
                category = "Overweight";
            }
        }
    } catch (Exception e) {
        response.sendRedirect("bmiCalculator.jsp");
        return;
    }
%>

<%-- Requirement 6 & 7: Forward result with parameters --%>
<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmiVal" value="<%= String.valueOf(bmi)%>" />
    <jsp:param name="cat" value="<%= category%>" />
</jsp:forward>