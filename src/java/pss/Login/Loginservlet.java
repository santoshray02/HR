/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pss.Login;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Santosh Ray
 */
public class Loginservlet extends HttpServlet {

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
            String password=request.getParameter("password");
            String usertype=request.getParameter("Utype");
            RequestDispatcher rd=null;
            ServletContext sc=getServletContext();
            String dbuser=sc.getInitParameter("dbuser");
            String dbpassword=sc.getInitParameter("dbpassword");
            Class.forName(sc.getInitParameter("driver"));
            con=DriverManager.getConnection(sc.getInitParameter("url1"),dbuser,dbpassword);
            if(con!=null){
            PreparedStatement pst=con.prepareStatement("Select * from login where username=? and password=? and usertype=?");
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, usertype);
            ResultSet rs=pst.executeQuery();
            String utype,name="";
            if(rs.next()){
                PreparedStatement pst1=con.prepareStatement("Select firstname,lastname from signup where username=?");
                pst1.setString(1, username);
                ResultSet rs1=pst1.executeQuery();
                if(rs1.next()){
                   name=rs1.getString(1)+" "+rs1.getString(2);
                }
                utype=rs.getString(3);
                if(utype.equals("Hotel")){
                HttpSession session=request.getSession();
                session.setAttribute("name", name);
                session.setAttribute("user", username);
                rd=request.getRequestDispatcher("hotelhome.jsp");
                }
                else if(utype.equals("Customer")){
                    HttpSession session=request.getSession();
                    session.setAttribute("user", username);
                    session.setAttribute("name", name);
                    rd=request.getRequestDispatcher("Home.jsp");
                }
                else if(utype.equals("Admin")){
                    HttpSession session=request.getSession();
                    session.setAttribute("user", username);
                    session.setAttribute("name", name);
                    rd=request.getRequestDispatcher("Admin/adminhome.jsp");
                }
            }
            else{
                request.setAttribute("msg","Username or Password incorrect");
                rd=request.getRequestDispatcher("Login.jsp");
            }
            
            }else{
                request.setAttribute("msg","Sorry Connectivity lost");
                rd=request.getRequestDispatcher("Login.jsp");
        }
            
            rd.forward(request, response); 
        } 
        catch(Exception e){
            System.out.print(e); 
        }
        finally{
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
