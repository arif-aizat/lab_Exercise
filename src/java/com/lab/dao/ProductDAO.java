/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.lab.model.Product;
/**
 *
 * @author AIZAT
 */
public class ProductDAO {
    // INSERTS
    public boolean insertProduct(Product p) {

        boolean status = false;

        try {

            Connection con =
                DBConnection.getConnection();

            String sql =
                "INSERT INTO products(name,category,price,quantity) VALUES(?,?,?,?)";

            PreparedStatement ps =
                con.prepareStatement(sql);

            ps.setString(1, p.getName());
            ps.setString(2, p.getCategory());
            ps.setDouble(3, p.getPrice());
            ps.setInt(4, p.getQuantity());

            status = ps.executeUpdate() > 0;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    // SELECT ALL
    public List<Product> getAllProducts() {
        List<Product> list =
            new ArrayList<>();
        try {
            Connection con =
                DBConnection.getConnection();
            String sql =
                "SELECT * FROM products";
            PreparedStatement ps =
                con.prepareStatement(sql);
            ResultSet rs =
                ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setCategory(rs.getString("category"));
                p.setPrice(rs.getDouble("price"));
                p.setQuantity(rs.getInt("quantity"));
                list.add(p);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    // DELETE
    public boolean deleteProduct(int id) {
        boolean status = false;
        try {
            Connection con =
                DBConnection.getConnection();

            String sql =
                "DELETE FROM products WHERE id=?";

            PreparedStatement ps =
                con.prepareStatement(sql);
            ps.setInt(1, id);
            status = ps.executeUpdate() > 0;
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    // UPDATE
    public boolean updateProduct(Product p) {
        boolean status = false;
        try {
            Connection con =
                DBConnection.getConnection();

            String sql =
                "UPDATE products SET name=?,category=?,price=?,quantity=? WHERE id=?";

            PreparedStatement ps =
                con.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getCategory());
            ps.setDouble(3, p.getPrice());
            ps.setInt(4, p.getQuantity());
            ps.setInt(5, p.getId());
            status = ps.executeUpdate() > 0;
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}