<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%
    String user = request.getQueryString();
    try{
        String role=null;
        String name=null;
        String password=null;
        Connection con = Db.getConnection();
        Statement st = con.createStatement();
        //st.executeQuery("delete from subadmin where id='"+user+"'");
        st.executeUpdate("delete from acadamic where id='"+user+"'");
            response.sendRedirect("viewacadamic.jsp?delete Successfully");
       
    }
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>