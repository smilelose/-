   
<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML> <BODY>
<HEAD><%@ include file="head.txt" %></HEAD>
<title>��Ʒ����</title>
<br><br><br><br>
<HTML><BODY background=image/1.jpg><Font size=2>
<CENTER>

<%  
   Connection con;
   Statement sql; 
   ResultSet rs;
   try {  Class.forName("com.mysql.jdbc.Driver");
   }
   catch(Exception e){} 
   String uri="jdbc:mysql://127.0.0.1/yiwu";
   try{ 
     con=DriverManager.getConnection(uri,"root","");
     sql=con.createStatement();
     String cdn=
     "SELECT * FROM change2";
     rs=sql.executeQuery(cdn);
     String picture="";
   
     while(rs.next()){
       String id=rs.getString(1);
       picture=rs.getString(2); 
       out.print("<img src='image/"+picture+"' width=400 height=300 ></img>");
      
     } 
     con.close();
  }
  catch(SQLException exp){}
  %>
</CENTER>

</Form>
</div >
</BODY></HTML>
<div align="center">
<FORM action="registerServlet" method="post" name=form>


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     