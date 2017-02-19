<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    
    
    String fname = request.getParameter("fname");
    String pass = request.getParameter("pass");
    
    String cpass = request.getParameter("cpass");
    String gender = request.getParameter("gender");
    String addr = request.getParameter("add");
    String email = request.getParameter("email");
    
    
    
    
    try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int i = st.executeUpdate("insert into user(fname,email,pass,cpass,gender,addr) values('"+fname+"','"+email+"','"+pass+"','"+cpass+"','"+gender+"','"+addr+"')");
       if(i!= 0)
       {
          response.sendRedirect("userlogin.jsp?Submit Successfully");
       }
       else
       {
           response.sendRedirect("userlogin.jsp?Submit Failed");
       }
    }
    catch(Exception e)
    {
        System.out.println("Error in signupction"+e.getMessage());
    }
%>