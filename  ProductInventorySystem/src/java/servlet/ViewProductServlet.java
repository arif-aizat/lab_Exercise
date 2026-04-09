/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;
    

import com.lab.dao.ProductDAO;
import com.lab.model.Product;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author AIZAT
 */
public class ViewProductServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out =
            response.getWriter();

        ProductDAO dao =
            new ProductDAO();

        List<Product> list =
            dao.getAllProducts();

        out.println("<h2>Product List</h2>");
        out.println("<table border='1'>");
        out.println(
          "<tr><th>ID</th><th>Name</th><th>Category</th>"
          + "<th>Price</th><th>Quantity</th>"
          + "<th>Edit</th><th>Delete</th></tr>");

        for (Product p : list) {

            out.println("<tr>");
            out.println("<td>"+p.getId()+"</td>");
            out.println("<td>"+p.getName()+"</td>");
            out.println("<td>"+p.getCategory()+"</td>");
            out.println("<td>"+p.getPrice()+"</td>");
            out.println("<td>"+p.getQuantity()+"</td>");
            out.println(
             "<td><a href='edit?id="+p.getId()+"'>Edit</a></td>");

            out.println(
             "<td><a href='delete?id="+p.getId()+"'>Delete</a></td>");

            out.println("</tr>");
        }
        out.println("</table>");
    }
}