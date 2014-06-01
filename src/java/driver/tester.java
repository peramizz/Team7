/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package driver;

import Connecter.ConnectionBuilder;
import java.util.List;
import model.*;

/**
 *
 * @author Admin
 */
public class tester {

    public static void main(String[] args) {
        List<Tool> tools=Tool.findByName("");
        Tool t1 = tools.get(1);
        System.out.println(t1.getName());
        for (Item i : t1.getItems()) {
            System.out.println(i.getDetail());
        }
        System.out.println("///////");
        for (String t : t1.getTags()) {
            System.out.println(t);
        }
    }
}
