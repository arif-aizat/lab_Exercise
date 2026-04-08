/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author AIZAT
 */
public class DBConnection {

    private static String url = "jdbc:mysql://localhost:3306/cse3023";
    private static String username = "root";
    private static String password = "";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}