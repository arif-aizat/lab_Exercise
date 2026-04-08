/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class UpdateProductServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        int id =
            Integer.parseInt(
            request.getParameter("id"));
        String name =
            request.getParameter("name");
        String category =
            request.getParameter("category");
        double price =
            Double.parseDouble(
            request.getParameter("price"));

        int quantity =
            Integer.parseInt(
            request.getParameter("quantity"));
        Product p = new Product();

        p.setId(id);
        p.setName(name);
        p.setCategory(category);
        p.setPrice(price);
        p.setQuantity(quantity);

        ProductDAO dao =
            new ProductDAO();

        dao.updateProduct(p);

        response.sendRedirect("view");
    }
}