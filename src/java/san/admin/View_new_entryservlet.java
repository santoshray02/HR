/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package san.admin;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Santosh Ray
 */
public class View_new_entryservlet extends HttpServlet {

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
            HttpSession session=request.getSession();
            String username=(String)session.getAttribute("user");
            ServletContext sc=getServletContext();
            String dbuser=sc.getInitParameter("dbuser");
            String dbpassword=sc.getInitParameter("dbpassword");
            Class.forName(sc.getInitParameter("driver"));
            con=DriverManager.getConnection(sc.getInitParameter("url1"),dbuser,dbpassword);
           PreparedStatement pst1=con.prepareStatement(" Select  from hotels ");
           pst1.setString(1, username);
           ResultSet rs=pst1.executeQuery();
           if(rs.next()){
           //String name=rs.getString(2)+" "+rs.getString(3);
           String hname=rs.getString(1);
           PreparedStatement pst=con.prepareStatement(" Select * from booking where hotelid=?");
               
           
           pst.setString(1, username);
               ArrayList al=null;
          ArrayList pid_list=new ArrayList();
          
           
           ResultSet rs1=pst.executeQuery();
           while(rs1.next()){
               al=new ArrayList();
              al.add(rs1.getString(1));
               al.add(rs1.getString(9));
               al.add(hname);
               
               al.add(rs1.getString(4));
               al.add(rs1.getString(5));
               al.add(rs1.getString(6));
               al.add(rs1.getString(7));
              al.add(rs1.getString(8));
               //al.add(username);
               
               
               pid_list.add(al);     
    
               
           }
           
               request.setAttribute("pid_list",pid_list);
               RequestDispatcher rd=request.getRequestDispatcher("viewyourbook.jsp");
               rd.forward(request, response);
           }else{
             request.setAttribute("msg","No Booking Not found  for your hotel ! ");
               RequestDispatcher rd=request.getRequestDispatcher("viewyourbook.jsp");
               rd.forward(request, response);  
           }
           
        }catch(Exception e){
            
            System.out.println(e);
        }finally {
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
