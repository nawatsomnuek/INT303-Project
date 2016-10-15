/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nawatsomnuek
 */
public class ConnectionBuilder {

    public static Connection connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.out.println("Can't find forName");
        }
        
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/BookOnlineStore", "root", "root");
        } catch (SQLException ex) {
            System.out.println("Can't find conn 5555");
        }
        return conn;
    }
    
    /*public static void main(String[] args) {
        Connection conn = ConnectionBuilder.connect();
        try {
//            PreparedStatement pstm2 = conn.prepareStatement("SELECT * FROM Admin");
//            ResultSet rs = pstm2.executeQuery();
//            while(rs.next()){
//                System.out.println(rs.getString("adUserName"));
            
            final String SQL_INSERT_REGIS = "INSERT INTO customers(custFirstName, custLastName, custAddress, custProvince, custZipcode, custEmail, custPassword, custQuestion, custAnswer) VALUES (?,?,?,?,?,?,?,?,?)";
        
        
            PreparedStatement pstm = conn.prepareStatement(SQL_INSERT_REGIS);
            pstm.setString(1, "1");
            pstm.setString(2, "2");
            pstm.setString(3, "3");
            pstm.setString(4, "4");
            pstm.setString(5, "5");
            //pstm.setString(6, c.getCustTel());
            //pstm.setDate(7, c.getCustDob());
            pstm.setString(6, "6");
            pstm.setString(7, "7");
            pstm.setString(8, "8");
            pstm.setString(9, "9");
            
            pstm.executeUpdate();
            pstm.close();
        
            PreparedStatement pstm2 = conn.prepareStatement("SELECT * FROM Customers");
            ResultSet rs = pstm2.executeQuery();
            while(rs.next()){
                System.out.println(rs.getString("custId"));
                System.out.println(rs.getString("custFirstName")); 
                System.out.println(rs.getString("custLastName"));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }*/
}
