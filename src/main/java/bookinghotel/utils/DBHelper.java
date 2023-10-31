/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookinghotel.utils;


import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * @author Phước Hà
 */
public class DBHelper implements Serializable {

    public static Connection makeConnect() throws SQLException {
        Connection con = null;
        try {
            String user = "sa";
            String pass = "Cunplong115@";
            String url = "jdbc:sqlserver://fanglongpc.hopto.org:1433;databaseName=BookingHotel";
            con = DriverManager.getConnection(url, user, pass);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static void main(String[] args) throws SQLException {
        Connection con = DBHelper.makeConnect();
        if(con != null){
            System.out.println("OK");
        }
    }

}
