/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package san.hotel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class Edithotelservlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            ServletContext sc=getServletContext();
            String dbuser=sc.getInitParameter("dbuser");
            String dbpassword=sc.getInitParameter("dbpassword");
            Class.forName(sc.getInitParameter("driver"));
            con=DriverManager.getConnection(sc.getInitParameter("url1"),dbuser,dbpassword);
            String hid = request.getParameter("hid");
            String hname = request.getParameter("hname");
            
            String password = request.getParameter("password");
           
            String city = request.getParameter("city");
            String email = request.getParameter("email");
            String mob = request.getParameter("mob");
            String state = request.getParameter("state");
            
            
           
            
           PreparedStatement pst=con.prepareStatement("UPDATE hotels SET hname=?,city=?,phone=?,email=?,state=?,password=? where hotelid=? ");
          PreparedStatement pstl=con.prepareStatement("UPDATE login SET password=? WHERE usertype='Hotel' and username=?");
          pst.setString(1, hname);
          pst.setString(2, city);
          pst.setString(3, mob);
          pst.setString(4, email);
          pst.setString(5, state);
          pst.setString(6, password);
          pst.setString(7, hid);
          
          pstl.setString(1, password);
          pstl.setString(2, hid);
          

        
          int i=pst.executeUpdate();
     int j=pstl.executeUpdate();
          if( i!=0  && j!=0  ){
             request.setAttribute("msg","Successfully registered");
            RequestDispatcher rd=request.getRequestDispatcher("viewdetails.jsp");
            rd.forward(request, response); 
          }
          else{
              request.setAttribute("msg","There r some error try again");
            RequestDispatcher rd=request.getRequestDispatcher("viewdetails.jsp");
            rd.forward(request, response);
          }
            
        } 
        catch(Exception e)
        {
         System.out.print(e); 
        } finally {
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
