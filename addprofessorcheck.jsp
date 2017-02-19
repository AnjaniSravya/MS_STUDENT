<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    
    
    String uname = request.getParameter("uname");
    String pname = request.getParameter("pname");
    
    String cname = request.getParameter("cname");
    String dname = request.getParameter("dname");
    String exp = request.getParameter("exp");
    String awards = request.getParameter("awards");
    
    
    String desc = request.getParameter("desc");
    
    
    try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int i = st.executeUpdate("insert into professor(pname,uname,cname,dname,exp,awards,pdesc) values('"+pname+"','"+uname+"','"+cname+"','"+dname+"','"+exp+"','"+awards+"','"+desc+"')");
       if(i!= 0)
       {
          response.sendRedirect("addprofessor.jsp?Submit Successfully");
       }
       else
       {
           response.sendRedirect("addprofessor.jsp?Submit Failed");
       }
    }
    catch(Exception e)
    {
        System.out.println("Error in signupction"+e.getMessage());
    }
%>