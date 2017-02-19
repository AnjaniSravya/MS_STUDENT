<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%
    String user = request.getParameter("name");
    String pass = request.getParameter("pass");
   
    try{
        String role=null;
        String name=null;
        String password=null;
        Connection con = Db.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where email='"+user+"' and pass='"+pass+"'");
        if(rs.next())
        {
           name = rs.getString("email");
           password = rs.getString("pass");
           }
        if(user.equals(name)&&pass.equals(password))
        {
            response.sendRedirect("userhome.jsp?Login Successfully");
            session.setAttribute("c", user);
            }
        
        else
        {
            response.sendRedirect("userlogin.jsp?Login Failed");
        }
    }
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>