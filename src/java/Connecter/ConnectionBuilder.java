/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Connecter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ConnectionBuilder {
    
    public static void main(String[] args) {
        Connection conn = getConnection();
    }
    
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/InProjectDB", "app", "app");

        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    
}
