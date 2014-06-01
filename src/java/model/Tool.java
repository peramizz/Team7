/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import Connecter.ConnectionBuilder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Tool {
    private int id;
    private String name;
    private String picture;
    private List<Item> items = getItemById(this.id);
    private List<String> tags;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public List<String> getTags() {
        return tags;
    }

    public void setTags(List<String> tags) {
        this.tags = tags;
    }
    
    public static int addTool(String name , String pic){
            try{
                 Connection conn = ConnectionBuilder.getConnection();
                 String sql = "INSERT INTO TOOL (NAME , PICTURE) values (?,?)";
                 PreparedStatement pstm = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
                 pstm.setString(1, name);
                 pstm.setString(2, pic);
                 pstm.executeUpdate();
                 ResultSet set=pstm.getGeneratedKeys();
                 set.next();
                 return set.getInt(1);
                 
             } catch (SQLException ex) {
                 Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
                 return -1;
             }
    }
    
    public void deleteTool(String name){
        if(isExist(name)){
            try{
                Connection conn = ConnectionBuilder.getConnection();
                String sql = "DELETE FROM TOOL WHERE NAME = ?  ";
                PreparedStatement pstm = conn.prepareStatement(sql);
                pstm.setString(1, name);
                pstm.executeUpdate();
                
            } catch (SQLException ex) {
                Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public static List<Tool> findByName(String name){
        List tools = null;
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM TOOL WHERE NAME like ?  ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, "%"+name+"%");
            ResultSet rs = pstm.executeQuery();
            
            Tool t = null;
            
            while(rs.next()){
                t = new Tool();
                orm(rs , t);
                tools.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return tools;
    }
    
    public static Tool findById(int id){
        Tool t = null;
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM TOOL WHERE IDTOOLS = ?  ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            
            if(rs.next()){
                
                t = new Tool();
                orm(rs , t);
                t.fillItem();
                t.fillTag();
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
        return t;
    }
    
    public static boolean isExist(String name){
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM TOOL WHERE NAME = ?  ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, name);
            ResultSet rs = pstm.executeQuery();
            
            return (rs.next());
                
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public void fillItem(){
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM ITEM WHERE IDTOOLS = ?  ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            List<Item> items = new ArrayList<Item>();
            while(rs.next()){
                Item i = new Item();
                ormItem(rs, i);
                items.add(i);
            }
            
            this.items = items;
                
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void fillTag(){
        
        try {
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM TOOLTAG WHERE IDTOOL = ?  ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            List<String> tags = new ArrayList<String>();
            
            while(rs.next()){
                tags.add(rs.getString("TAGNAME"));
            }
            
            this.tags = tags;
            
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private static void orm(ResultSet rs , Tool t){
        try {
            t.setId(rs.getInt("IDTOOLS"));
            t.setName(rs.getString("NAME"));
            t.setPicture("PICTURE");
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private static void ormItem(ResultSet rs , Item i){
        try {
            i.setId(rs.getInt("IDITEM"));
            i.setAvaliable(rs.getBoolean("AVAILABLE"));
            i.setDetail(rs.getString("DETAIL"));
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static int genItemId(int idtool){
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT MAX(IDITEM) FROM ITEM WHERE IDTOOLS = ?  ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idtool);
            ResultSet rs = pstm.executeQuery();
            
            if(rs.next()){
                return rs.getInt(1) + 1;
            }
        }catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
     }
        
    public void addItem(Item item){
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "INSERT INTO ITEM values(?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            
            int iId = Tool.genItemId(id);
            
            pstm.setInt(1,this.id);
            pstm.setInt(2 , iId);
            pstm.setBoolean(3, true);
            pstm.setString(4, item.getDetail());
            
            
            
            pstm.executeUpdate();
            item.setAvaliable(true);
            item.setId(iId);
            
            this.items.add(item);
            
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteItem(int idItem){
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "DELETE FROM ITEM WHERE IDTOOLS = ? AND IDITEM = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            pstm.setInt(2, idItem);
            pstm.executeUpdate();
            
            for(Item i : items){
                if(i.getId() == idItem){
                    items.remove(i);
                    break;
                }
            }
            
        }catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateItem(int idItem , String detail){
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "UPDATE ITEM set DETAIL = ? WHERE IDTOOLS = ? and IDITEM = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            
            for(Item i : items){
                if(i.getId() == idItem){
                    i.setDetail(detail);
                    break;
                }
            }
            pstm.setString(1, detail);
            pstm.setInt(2, id);
            pstm.setInt(3, idItem);
            pstm.executeUpdate();
            
            
            
        }catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void borrow(long sid , String pp , int idT , int idBr){   
                try{
                    Connection conn = ConnectionBuilder.getConnection();
                    String sql = "UPDATE ITEM SET AVAILABLE = ? WHERE IDITEM = ? AND IDTOOLS = ?";
                    PreparedStatement pstm = conn.prepareStatement(sql);
                    pstm.setBoolean(1, false);
                    pstm.setInt(2, idBr);
                    pstm.setInt(3, idT);
                    pstm.executeUpdate();
                    
//                    sql = "SELECT * FROM ITEM WHERE IDTOOLS = ?";
//                    pstm = conn.prepareStatement(sql);
//                    pstm.setInt(1, idT);
//                    ResultSet rs = pstm.executeQuery();
//                    List<Item> items = new ArrayList<Item>();
//                    while(rs.next()){
//                        Item ia = new Item();
//                        ormItem(rs, ia);
//                        items.add(ia);
//                    }
//                    
//                    this.items = items;
                    
                    sql = "SELECT * FROM STUDENT where IDSTUDENT = ?";
                    pstm = conn.prepareStatement(sql);
                    pstm.setLong(1, sid);
                    ResultSet rs = pstm.executeQuery();
                    Student s = new Student();
//                    if(rs.next()){
//                        s.setId(rs.getLong("IDSTUDENT"));
//                        s.setEmail(rs.getString("EMAIL"));
//                        s.setName(rs.getString("NAME"));
//                        s.setSurname(rs.getString("SURNAME"));
//                        
//                        Tool t
                    
                        sql = "INSERT INTO BORROW (IDSTUDENT , IDTOOL , IDITEM , PURPOSE , DATEBORROW) values(?,?,?,?,current_date)";
                        pstm = conn.prepareStatement(sql);
                        pstm.setLong(1, sid);
                        pstm.setInt(2, idT);
                        pstm.setInt(3, idBr);
                        pstm.setString(4, pp);
                        pstm.executeUpdate();
//                    }
                    
                } catch (SQLException ex) {
                    Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
                }
            
        }
    
    public List<Item> getItemById(int id){
        
        List<Item> itemById = new ArrayList<Item>();
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "SELECT * FROM ITEM WHERE IDTOOLS = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1 , id);
            ResultSet rs = pstm.executeQuery();
            
            while(rs.next()){
                Item i  = new Item();
                ormItem(rs, i);
                itemById.add(i);
            }
            
            return itemById;
            
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
        return itemById;
    }
    
    public void saveTag(){
        String tag;
        try{
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "DELETE FROM TOOLTAG WHERE IDTOOL = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            pstm.executeUpdate();
            
            
            sql = "INSERT INTO TOOLTAG values(?,?)";
            pstm = conn.prepareStatement(sql);
            
            pstm.setInt(2, id);
            for(String t : tags){
                pstm.setString(1, t);
                pstm.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Tool.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
