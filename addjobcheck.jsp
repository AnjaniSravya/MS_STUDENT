<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    
    
    String uname = request.getParameter("uname");
    String jname = request.getParameter("jname");
    String salary = request.getParameter("salary");
    String jdesc = request.getParameter("jdesc");
    
    
    try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int i = st.executeUpdate("insert into job(uname,jname,salary,jdesc) values('"+uname+"','"+jname+"','"+salary+"','"+jdesc+"')");
       if(i!= 0)
       {
          response.sendRedirect("addjob.jsp?Submit Successfully");
       }
       else
       {
           response.sendRedirect("addjob.jsp?Submit Failed");
       }
    }
    catch(Exception e)
    {
        System.out.println("Error in signupction"+e.getMessage());
    }
%>