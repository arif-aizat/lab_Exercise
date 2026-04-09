/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;
import com.lab.dao.ProductDAO;
import com.lab.model.Product;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author AIZAT
 */
public class InsertProductServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

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

        p.setName(name);
        p.setCategory(category);
        p.setPrice(price);
        p.setQuantity(quantity);

        ProductDAO dao =
            new ProductDAO();

        boolean status = dao.insertProduct(p);

if(status){
    System.out.println("Insert Success");
} else {
    System.out.println("Insert Failed");
}

response.sendRedirect("view");
    }
}
