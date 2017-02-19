<!DOCTYPE html>
<%@page import="java.util.Random"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>

<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css"/>
    <link rel="stylesheet" href="css/owl.carousel.css"/>
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <script src="js/jquery.mobile.customized.min.js"></script>
    <!--<![endif]-->
    <script src="js/camera.js"></script>
    <script src="js/owl.carousel.js"></script>
    <!--[if lt IE 9]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <script src="js/html5shiv.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
    <![endif]-->
</head>
<body>
<div class="page">
<!--========================================================
                          HEADER
=========================================================-->
<header id="header">
    <div id="stuck_container">
        <div class="container">
            <div class="row">
                <div class="grid_12">
                    <div class="brand put-left">
                        <h1>
                            <a href="index.jsp">
                                <img src="images/logo2.png" height="300" width="400" alt="Logo"/>
                            </a>
                        </h1>
                    </div>
                    <nav class="nav put-right">
                        <ul class="sf-menu">
                            <li ><a href="index.jsp">Home</a></li>
                          <!--  <li>
                                <a href="about.html">About</a>
                                <ul>
                                    <li><a href="#">Lorem ipsum</a></li>
                                    <li><a href="#">Dolor sit amet</a>
                                    <li><a href="#">Ctetur adipisicing</a>
                                    <li><a href="#">Elit sed do</a>
                                        <ul>
                                            <li><a href="#">Iusmod tempor</a></li>
                                            <li><a href="#">Incididunt ut labore</a></li>
                                            <li><a href="#">Et dolore magna</a></li>
                                            <li><a href="#">Aliqua Ut enim</a></li>
                                            <li><a href="#">Minim veniam</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="services.html">Services</a></li>
                            <li><a href="blog.html">Blog</a></li>-->
                            <li><a href="wheretostudy.jsp">Where to Study</a></li>
                            <li><a href="academic.jsp">Courses</a></li>
                            <li><a href="job.jsp">On-campus Job</a></li>
                            <li class="current"><a href="professor.jsp">Professor</a></li>
                           
                        <li><a href="admin.jsp"><img src="images/adm.jpg" height="30" width="30"></img></a></li> 
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!--========================================================
                          CONTENT
=========================================================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - September08, 2014!</div>
<div class="camera-wrapper">
    <div id="camera" class="camera-wrap">
        <div data-src="images/userhome.jpg">
            <div class="fadeIn camera_caption">
                <h2 class="text_1 color_1">User Home</h2>
                
            </div>
        </div>
        
    </div>
</div>
    
    
    <center>
    <table  border="50" width="1000" bgcolor="pink">
                    <tr style="color:red;" >
                        <th>University Name</th>
                        <th>Professor Name</th>
                        <th>Course Name</th>
                        <th>Domain Name</th>
                        <th>Experience</th>
                        <th>Award</th>
                        <th>Description</th>
                       
                    </tr>
                    <%
                   
                    
                     
                        try{
                        String n=null;
                        String p=null;
                        String r=null;
                        String g=null;
                        String a=null;
                        String e=null;
                        String d=null;
                        Connection con =Db.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select * from professor");
                        
                        
                        
                        while(rs.next())
                        {
                          
                          
                          
                                                     
                            n=rs.getString("uname");
                          p=rs.getString("pname");
                          g=rs.getString("cname");
                          r=rs.getString("dname");
                           e=rs.getString("exp");
                            d=rs.getString("awards");
                            a=rs.getString("pdesc");
                          
                          
                          
                        %>
                        <tr align="center" >
                            <td><%=n%></td>
                            <td><%=p%></td>
                            <td><%=g%></td>
                            <td><%=r%></td>
                            <td><%=e%></td>
                            <td><%=d%></td>
                            <td><%=a%></td>
                            
                          
                        </tr>
                        <% 
                        
                                               
                        
                        
                        
                        
                        
                        }
                        
                        
                        }
                        
                        
                        
                        
                        catch(Exception e)
                        {
                            System.out.println("Execption Error in Admin View"+e.getMessage());
                        }                        
                    %>
                    </table>  




            </center>
<br>
<br>
<br>


</section>
</div>
<!--========================================================
                          FOOTER
=========================================================-->
<footer id="footer" class="color_9">
    <div class="container">
        <div class="row">
            <div class="grid_12">
                <p class="info text_4 color_4">
                    <span id="copyright-year"></span> | <a href="#">MS STUDENT ABROAD APP</a> <br/>
                Thank You    
                </p>
            </div>
        </div>
    </div>
</footer>
<script src="js/script.js"></script>
</body>
</html>