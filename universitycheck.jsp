<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    
    String nname = request.getParameter("nname");
    String uname = request.getParameter("uname");
    String gre = request.getParameter("gre");
    String ielets = request.getParameter("ielets");
    String tofel = request.getParameter("tofel");
    String ranking = request.getParameter("ranking");
    
    
    try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int i = st.executeUpdate("insert into university(nname,uname,gre,ielets,tofel,ranking) values('"+nname+"','"+uname+"','"+gre+"','"+ielets+"','"+tofel+"','"+ranking+"')");
       if(i!= 0)
       {
          response.sendRedirect("adduniversity.jsp?Submit Successfully");
       }
       else
       {
           response.sendRedirect("adduniversity.jsp?Submit Failed");
       }
    }
    catch(Exception e)
    {
        System.out.println("Error in signupction"+e.getMessage());
    }
%>