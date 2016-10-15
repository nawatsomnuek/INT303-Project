/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nawatsomnuek
 */
public class Customer {
    private String custId;
    private String custFirstname;
    private String custLastname;
    private String custAddress;
    private String custProvince;
    private String custZipcode;
    private String custTel;
    private Date custDob;
    private String custEmail;
    private String custPassword;
    private String custQuestion;
    private String custAnswer;

    public Customer() {
    }

    public Customer(String custFirstname, String custLastname, String custAddress, String custProvince, String custZipcode, String custTel,Date custDob, String custEmail, String custPassword, String custQuestion, String custAnswer) {
        this.custFirstname = custFirstname;
        this.custLastname = custLastname;
        this.custAddress = custAddress;
        this.custProvince = custProvince;
        this.custZipcode = custZipcode;
        this.custTel = custTel;
        this.custDob = custDob;
        this.custEmail = custEmail;
        this.custPassword = custPassword;
        this.custQuestion = custQuestion;
        this.custAnswer = custAnswer;
    }

    public void addRegis (){
        Connection conn = ConnectionBuilder.connect();
        
        final String SQL_INSERT_REGIS = "INSERT INTO customers(custFirstName, custLastName, custAddress, custProvince, custZipcode, custTel, custDob, custEmail, custPassword, custQuestion, custAnswer) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        
        try {
            PreparedStatement pstm = conn.prepareStatement(SQL_INSERT_REGIS);
            pstm.setString(1, this.getCustFirstname());
            pstm.setString(2, this.getCustLastname());
            pstm.setString(3, this.getCustAddress());
            pstm.setString(4, this.getCustProvince());
            pstm.setString(5, this.getCustZipcode());
            pstm.setString(6, this.getCustTel());
            pstm.setDate(7, this.getCustDob());
            pstm.setString(8, this.getCustEmail());
            pstm.setString(9, this.getCustPassword());
            pstm.setString(10, this.getCustQuestion());
            pstm.setString(11, this.getCustAnswer());
            
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
    }

    public String getCustFirstname() {
        return custFirstname;
    }

    public void setCustFirstname(String custFirstname) {
        this.custFirstname = custFirstname;
    }

    public String getCustLastname() {
        return custLastname;
    }

    public void setCustLastname(String custLastname) {
        this.custLastname = custLastname;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public String getCustProvince() {
        return custProvince;
    }

    public void setCustProvince(String custProvince) {
        this.custProvince = custProvince;
    }

    public String getCustZipcode() {
        return custZipcode;
    }

    public void setCustZipcode(String custZipcode) {
        this.custZipcode = custZipcode;
    }

    public String getCustTel() {
        return custTel;
    }

    public void setCustTel(String custTel) {
        this.custTel = custTel;
    }

    public Date getCustDob() {
        return custDob;
    }

    public void setCustDob(Date custDob) {
        this.custDob = custDob;
    }

    public String getCustEmail() {
        return custEmail;
    }

    public void setCustEmail(String custEmail) {
        this.custEmail = custEmail;
    }

    public String getCustPassword() {
        return custPassword;
    }

    public void setCustPassword(String custPassword) {
        this.custPassword = custPassword;
    }

    public String getCustQuestion() {
        return custQuestion;
    }

    public void setCustQuestion(String custQuestion) {
        this.custQuestion = custQuestion;
    }

    public String getCustAnswer() {
        return custAnswer;
    }

    public void setCustAnswer(String custAnswer) {
        this.custAnswer = custAnswer;
    }
}