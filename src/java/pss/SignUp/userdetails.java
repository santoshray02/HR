/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pss.SignUp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Santosh Ray
 */
public class userdetails extends HttpServlet {

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
        PrintWriter out = response.getWriter();
         Connection con=null;
        try {
         String username=request.getParameter("username");
         ServletContext sc=getServletContext();
            String dbuser=sc.getInitParameter("dbuser");
            String dbpassword=sc.getInitParameter("dbpassword");
            Class.forName(sc.getInitParameter("driver"));
            con=DriverManager.getConnection(sc.getInitParameter("url1"),dbuser,dbpassword);
           PreparedStatement pst=con.prepareStatement("Select * from signup where username=?");
          pst.setString(1, username);
          ArrayList al=null;
          ArrayList pid_list=new ArrayList();
          
           ResultSet rs=pst.executeQuery();
           while(rs.next()){
               al=new ArrayList();
              
               al.add(rs.getString(1));
               al.add(rs.getString(2));
               al.add(rs.getString(3));
               al.add(rs.getString(4));
               al.add(rs.getString(5));
               al.add(rs.getString(6));
               al.add(rs.getString(7));
             al.add(rs.getString(8));
              
               al.add(rs.getString(9));
               al.add(rs.getString(10));
               pid_list.add(al);     
    
               
           }
           
               request.setAttribute("pid_list",pid_list);
               RequestDispatcher rd=request.getRequestDispatcher("userdetails.jsp");
               rd.forward(request, response);
           
           
        }catch(Exception e){
            System.out.println(e);
        }
        finally {
            out.close();
        }
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
