/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.controller;

/**
 *
 * @author AIZAT
 */

import com.lab.bean.Employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PayrollServlet")
public class PayrollServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Employee> list = new ArrayList<>();

        // Populating 5 Employee objects
        Employee e1 = new Employee();
        e1.setEmpId("E001"); e1.setName("Alice"); e1.setDepartment("IT"); e1.setBasicSalary(4500.0);
        
        Employee e2 = new Employee();
        e2.setEmpId("E002"); e2.setName("Bob"); e2.setDepartment("HR"); e2.setBasicSalary(2800.0);
        
        Employee e3 = new Employee();
        e3.setEmpId("E003"); e3.setName("Charlie"); e3.setDepartment("Finance"); e3.setBasicSalary(3500.0);
        
        Employee e4 = new Employee();
        e4.setEmpId("E004"); e4.setName("Diana"); e4.setDepartment("IT"); e4.setBasicSalary(2900.0);
        
        Employee e5 = new Employee();
        e5.setEmpId("E005"); e5.setName("Ethan"); e5.setDepartment("Marketing"); e5.setBasicSalary(5000.0);

        list.add(e1); list.add(e2); list.add(e3); list.add(e4); list.add(e5);

        // Share list to JSP
        request.setAttribute("employeeList", list);

        // Forward to the View
        request.getRequestDispatcher("payroll_view.jsp").forward(request, response);
    }
}