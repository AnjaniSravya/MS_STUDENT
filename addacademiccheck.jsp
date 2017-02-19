<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    
    
    String uname = request.getParameter("uname");
    String cname = request.getParameter("cname");
    String duration = request.getParameter("duration");
    
    
    try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int i = st.executeUpdate("insert into acadamic(uname,cname,duration) values('"+uname+"','"+cname+"','"+duration+"')");
       if(i!= 0)
       {
          response.sendRedirect("addacadamic.jsp?Submit Successfully");
       }
       else
       {
           response.sendRedirect("addacadamic.jsp?Submit Failed");
       }
    }
    catch(Exception e)
    {
        System.out.println("Error in signupction"+e.getMessage());
    }
%>
