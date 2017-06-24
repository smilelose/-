package myservlet.control;



import mybean.data.*;

import java.sql.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;



public class HandleInput extends HttpServlet {
	public void init(ServletConfig config) throws ServletException { 
	      super.init(config);
	      try {  Class.forName("com.mysql.jdbc.Driver");
	      }
	      catch(Exception e){} 
	   }
	   public String handleString(String s)
	   {   try{ byte bb[]=s.getBytes("iso-8859-1");
	            s=new String(bb);
	       }
	       catch(Exception ee){} 
	       return s;  
	   }
	   public  void  doPost(HttpServletRequest request,HttpServletResponse response) 
	                        throws ServletException,IOException {
		   String uri="jdbc:mysql://127.0.0.1/yiwu?"+
	          "user=root&password=&characterEncoding=gb2312";
	      
	      Connection con; 
	      //PreparedStatement sql; 
	      Statement sql;
	      Input changeBean=new Input();  //创建的Javabean模型
	      request.setAttribute("changeBean",changeBean);
	      String logname1=request.getParameter("logname").trim();
	      String need1=request.getParameter("need").trim();
	      String changeout1=request.getParameter("changeout").trim();
	      if(logname1==null||need1==null||changeout1==null) { 
	         changeBean.setBackNews("任何一项不能为空");
	         RequestDispatcher dispatcher= request.getRequestDispatcher("input.jsp");
	         dispatcher.forward(request, response);//转发
	         return;
	      }
	      String backNews="";
	     
	      try{   con=DriverManager.getConnection(uri);
	      
	      sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                  ResultSet.CONCUR_READ_ONLY);
	      String condition = "INSERT INTO change "+" VALUES"+
	    	      "(" + logname1 + ',' + need1 + ',' + changeout1+")";
	      int m = sql.executeUpdate("INSERT INTO change1 VALUES ('12','23','34')");
	      
	      
	      
	      
	      
	             //String insertCondition="INSERT INTO change VALUES (?,?,?)";
	            // sql=con.prepareStatement(insertCondition);
	            // sql.setString(1,handleString(logname));
	             //sql.setString(2,handleString(need));
	             //sql.setString(3,handleString(changeout));
                // int m=sql.executeUpdate();
	             if(m!=0){
	                  backNews="上传成功";
	                  changeBean.setBackNews(backNews);
	                  changeBean.setLogname(logname1);
	                  changeBean.setNeed(handleString(need1));
	                  changeBean.setChangeout(handleString(changeout1));
	               }
	             
	             else {
	                 backNews="上传失败";
	                 changeBean.setBackNews(backNews);  
	             }
	             con.close();
	      }
	      catch(SQLException exp){
	             backNews="该物品已经被录入"+exp;
	             changeBean.setBackNews(backNews); 
	      }
	      RequestDispatcher dispatcher= 
	      request.getRequestDispatcher("input.jsp");
	      dispatcher.forward(request, response);//转发
	   }
	   public  void  doGet(HttpServletRequest request,HttpServletResponse response)
	                        throws ServletException,IOException {
	      doPost(request,response);
	   }
}
