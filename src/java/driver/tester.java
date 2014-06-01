/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package driver;

import Connecter.ConnectionBuilder;
import model.*;

/**
 *
 * @author Admin
 */
public class tester {

    public static void main(String[] args) {
        Tool t1 = Tool.findById(1);
        System.out.println(t1.toString());
        for (Item i : t1.getItems()) {
            System.out.println(i.getDetail());
        }
        for (String t : t1.getTags()) {
            System.out.println(t);
        }

//        t1.addTool("cotton", "c.jpg");
//        t1.deleteTool("cotton");
        
        t1.getTags().add("Speaker");
        t1.getTags().remove("Indoor Decoration");
        for (String t : t1.getTags()) {
            System.out.println(t);
        }
        
        t1.saveTag();
        
    }
}
