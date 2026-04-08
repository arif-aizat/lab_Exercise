/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;


import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
 
public class EditProductServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id =
            Integer.parseInt(
            request.getParameter("id"));

        ProductDAO dao =
            new ProductDAO();

        List<Product> list =
            dao.getAllProducts();

        Product product = null;

        for (Product p : list) {
            if (p.getId() == id) {
                product = p;
                break;
            }
        }
        response.setContentType("text/html");
        PrintWriter out =
            response.getWriter();
        out.println("<h2>Edit Product</h2>");
        out.println("<form action='update' method='post'>");
        out.println("<input type='hidden' name='id' value='"+product.getId()+"'>");
        out.println("Name:");
        out.println("<input type='text' name='name' value='"+product.getName()+"'><br><br>");
        out.println("Category:");
        out.println("<input type='text' name='category' value='"+product.getCategory()+"'><br><br>");
        out.println("Price:");
        out.println("<input type='text' name='price' value='"+product.getPrice()+"'><br><br>");
        out.println("Quantity:");
        out.println("<input type='text' name='quantity' value='"+product.getQuantity()+"'><br><br>");
        out.println("<input type='submit' value='Update Product'>");
        out.println("</form>");
    }
}