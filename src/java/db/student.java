/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import java.sql.*;
import Connecter.ConnectionBuilder;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Gift
 */
public class student {
    private static int i=0;
    public static void main(String[] args) {
        try{
            for( i=0;i<50;i++){
            Connection conn = ConnectionBuilder.getConnection();
            String sql = "INSERT INTO STUDENT (IDSTUDENT,NAME,SURNAME) VALUES(?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1,100000000+i );
            pstm.setString(2, studentName());
            pstm.setString(3, studentSurName());
            pstm.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(student.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private static String studentName(){
        
        String[] names = {"Latoyia","Adalberto","My","Daina","Deshawn","Myrtle","Carroll","Latricia ","Rosalia",
            "Alfreda  ","Lacey  ","Chara  ","Mammie  ","Cleveland  ","Lajuana ","Donald","Jae  ","Starla ","Kellye ",
            "Salvador  ","Oneida  ","Latisha  ","Janett  ","Thurman  ","Jeanett  ","Domingo  ","Brandy  ",
            "Benedict  ","Duncan  ","Jamison  ","Meggan  ","Eulalia  ","Yadira  ","Shelley  ","Talitha  ",
            "Wesley  ","Norma  ","Leonila  ","Ozie  ","Lincoln  ","Rea  ","Tora  ","Marlin  ","Marva  "
                ,"Melsaine  ","Cythia  ","Sheilah  ","Tyree  ","Nanette  ","Juana"};
       
            return names[i];
        }

    private static String studentSurName() {
        String[] surNames = {"Lue  ","Emily  ","Noma  ","Leida  ","Sandra  ","Jetta  ","Marjorie  ",
            "Starr  ","Sasha  ","Corrina  ","Lissette  ","Lisbeth  ","Erasmo  ","Torri  ","Steffanie  ",
            "Tim  ","Alane  ","Micki  ","Kasha  ","Terisa  ","Lucie  ","Evon  ","Mohammed  ","Althea  ",
            "Delbert  ","Hertha  ","Janey  ","Tamera  ","Maris  ","Nolan  ","Bryon  ","Tanya  ","Akiko  ",
            "Mack  ","Wanda  ","Ta  ","Cris  ","Britany  ","Marci  ","Carlota  ","Florencio ","Verlie  ",
            "Karmen  ","Donovan  ","Lauran  ","Donte  ","Krystyna  ","Arlena  ","Fermina  ","Darren  "};
       
            return surNames[i];
        }
    }
    
   
    
