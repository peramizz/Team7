/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import Connecter.ConnectionBuilder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Item;
import model.Tool;
/**
 *
 * @author Gift
 */
public class item {
    public static void main(String[] args) throws Exception{
       // ArrayList<Integer> num = new ArrayList<Integer>();
    
    try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT IDTOOLS FROM TOOL ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
               // num.add(rs.getInt("IDTOOL"));
                
                int i = (int)(Math.random()*4+1);
                for(int a=1;a<=i;a++){
                    sql = "INSERT INTO ITEM(IDTOOLS,IDITEM,AVAILABLE) VALUES(?,?,?)";
                     pstm = conn.prepareStatement(sql);
                    pstm.setInt(1, rs.getInt("IDTOOLS"));
                    pstm.setInt(2, a);
                    pstm.setBoolean(3, true);
                   pstm.executeUpdate();
                }
            }
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(student.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
