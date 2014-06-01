/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;
import Connecter.ConnectionBuilder;
import java.sql.*;

/**
 *
 * @author Gift
 */
public class tooltag {
    public static void main(String[] args) throws Exception{
        
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM TAG";
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs= pstm.executeQuery();
            while(rs.next()){
                if(rs.getString("tagname").equalsIgnoreCase("Electric Appliance")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 56);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 58);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 64);
                    pstm.executeUpdate();
                }else if(rs.getString("tagname").equalsIgnoreCase("fabric")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 52);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 53);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 65);
                    pstm.executeUpdate();
                }else if(rs.getString("tagname").equalsIgnoreCase("Indoor Decoration")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 87);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 88);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 52);
                    pstm.executeUpdate();pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 53);
                    pstm.executeUpdate();pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 65);
                    pstm.executeUpdate();
                }else if(rs.getString("tagname").equalsIgnoreCase("Outdoor Decoration")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 56);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 64);
                    pstm.executeUpdate();
                }else if(rs.getString("tagname").equalsIgnoreCase("Prop")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 87);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 88);
                    pstm.executeUpdate();  
                }else if(rs.getString("tagname").equalsIgnoreCase("Speaker")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 58);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 63);
                    pstm.executeUpdate();  
                }else if(rs.getString("tagname").equalsIgnoreCase("Wood")){
                    sql = "INSERT INTO TOOLTAG (TAGNAME,IDTOOL) VALUES(?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 51);
                    pstm.executeUpdate();
                    pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 55);
                    pstm.executeUpdate(); 
                     pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 60);
                    pstm.executeUpdate(); 
                     pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 61);
                    pstm.executeUpdate(); 
                     pstm.setString(1, rs.getString("tagname"));
                    pstm.setInt(2, 66);
                    pstm.executeUpdate(); 
                }
            }
        }
    
    
}
