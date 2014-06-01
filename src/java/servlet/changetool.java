/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Tool;

/**
 *
 * @author rachatapon
 */
public class changetool extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        MultipartRequest m = new MultipartRequest(request, "/Users/rachatapon/NetBeansProjects/Team7/images/");
        String image = m.getFilesystemName("upload");
        int id=Integer.parseInt(m.getParameter("id"));
        Tool tool=Tool.findById(id);
        if(image!=null){
                   
        File file1 = new File(tool.getPicture());
        if(file1.exists()){
            file1.delete();
        }
        File file = new File("/Users/rachatapon/NetBeansProjects/Team7/images/" + image);
        File newFile = new File("/Users/rachatapon/NetBeansProjects/Team7/images/" + id + image.substring(image.indexOf(".")));
        file.renameTo(newFile);
        tool.setPicture("/Users/rachatapon/NetBeansProjects/Team7/images/" + id + image.substring(image.indexOf(".")));
        }
        
        String[] tags=m.getParameterValues("tag");
        ArrayList<String> taglist = new ArrayList<String>();
        for(String s:tags){
            taglist.add(s);
        }
        tool.setTags(taglist);
        tool.updateTool();
        response.sendRedirect("tooldetail?idtool="+id);
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
