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
public class SignUpservlet extends HttpServlet {

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
            
            ServletContext sc=getServletContext();
            String dbuser=sc.getInitParameter("dbuser");
            String dbpassword=sc.getInitParameter("dbpassword");
            Class.forName(sc.getInitParameter("driver"));
            con=DriverManager.getConnection(sc.getInitParameter("url1"),dbuser,dbpassword);
            if(con!=null){
                String username = request.getParameter("username");
            String firstname = request.getParameter("fname");
            String lastname = request.getParameter("lname");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String mobile_no = request.getParameter("mob");
            String gender = request.getParameter("r1");
            
            PreparedStatement ps=con.prepareStatement("Select * from signup where binary email=? and username=?");
            ps.setString(1, email);
            ps.setString(2, username);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
           {         
            request.setAttribute("msg","Username or email is already exists");
            RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
           }else{
           
            
           PreparedStatement pst=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?,?,?)");
           PreparedStatement pstl=con.prepareStatement("insert into login values(?,?,?)");
          pst.setString(1, "Customer");
          pst.setString(2, username);
          pst.setString(3, firstname);
          pst.setString(4, lastname);
          pst.setString(5, password);
          pst.setString(6, dob);
          pst.setString(7, address);
          pst.setString(8, email);
          pst.setString(9, mobile_no);
          pst.setString(10, gender);
          
          pstl.setString(1, username);
          pstl.setString(2, password);
          pstl.setString(3, "Customer");
        
          int i=pst.executeUpdate();
          int y=pstl.executeUpdate();
          if(i!=0 && y!=0){
             request.setAttribute("msg","Successfully registered");
            RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
            rd.forward(request, response); 
          }
          else{
              request.setAttribute("msg","There r some error");
            RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
          }
            }
            }else{
                request.setAttribute("msg","Sorry Databse connection not found");
            RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
            rd.forward(request, response);
            }
        } 
        catch(Exception e)
        {
         System.out.print(e); 
        }    finally {
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
