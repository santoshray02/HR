/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pss.SignUp;

import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;

/**
 *
 * @author Santosh Ray
 */
public class Hotelregisterservlet extends HttpServlet {

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
           String hid="",hnew;
            String hname = request.getParameter("hname");
            String password = request.getParameter("password");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String email = request.getParameter("email");
            String mob = request.getParameter("mob");
            InputStream ip=null;
            Part filepart=request.getPart("photo");
           if(filepart!=null)
           {
            ip=filepart.getInputStream();
           }
           PreparedStatement pst2=con.prepareStatement("select hotelid from hotels order by hotelid desc limit 1");
           ResultSet rs=pst2.executeQuery();
           
           
           if(rs.next()){
               hid=rs.getString(1);
               hnew=hidgenrate(hid);
               
           }
           else{
               hnew="h0001";
           }
           PreparedStatement pst=con.prepareStatement("insert into hotels(hotelid,hname,city,phone,email,state,img,password) values(?,?,?,?,?,?,?,?)");
           PreparedStatement pstl=con.prepareStatement("insert into login values(?,?,?)");
          pst.setString(1, hnew);
          pst.setString(2, hname);
          pst.setString(3, city);
          pst.setString(5, email);
          pst.setString(4, mob);
          
          pst.setString(6, state);
          pst.setString(8, password);
          if(ip!=null)
          {
            pst.setBlob(7,ip);
         
         }
          pstl.setString(1, hid);
          pstl.setString(2, password);
          pstl.setString(3, "Hotel");
        
          int i=pst.executeUpdate();
          int y=pstl.executeUpdate();
          if(i!=0 && y!=0){
             request.setAttribute("hid",hnew);
            RequestDispatcher rd=request.getRequestDispatcher("hotelrequest.jsp");
            rd.forward(request, response); 
          }
          else{
              request.setAttribute("msg","There r some error");
            RequestDispatcher rd=request.getRequestDispatcher("hotelsignup.jsp");
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
    public String hidgenrate(String s){
        int len=s.length();
        String res="",temp="";
        for(int i=0;i<len;i++){
            Character c=s.charAt(i);
            if(Character.isDigit(c))
                temp+=c;
        }
        int num=Integer.parseInt(temp);
        num++;
        if(num<=9){
            
            res+="h000"+num;
        }
        else if(num<=99 && num>9){
            res+="h00"+num;
        }
        else if(num<=999 && num>99){
            res+="h0"+num;
        }
        else 
          res+="h"+num;  
        return res;
        
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
