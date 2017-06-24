<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="changeBean" class="mybean.data.Input" scope="request"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<title>物品上传</title>
<HTML><BODY background=image/1.jpg><Font size=2>
<div align="center">
<FORM action="InputServlet" method="post" name=form>
<table>
  <td>用户名称:<Input type=text name="logname" ></td>
  <td>所需物品:<Input type=text name="need"></td>
  <td>换出物品:<Input type=text name="changeout"></td>
  <td><Input type=submit name="g" value="提交"></td>
</table>
</Form>
</div >
<div align="center">
<p> 录入反馈：
<jsp:getProperty name="changeBean"  property="backNews" /> 
<table border=3>
    
     <tr><td>用户名称:</td>
     <td><jsp:getProperty name="changeBean" property="logname"/></td>
     </tr>
     <tr><td>所需物品:</td>
     <td><jsp:getProperty name="changeBean" property="need"/></td>
     </tr>
     <tr><td>换出物品:</td>
     <td><jsp:getProperty name="changeBean" property="changeout"/><br></td>
     </tr>
</table></div >
</Body></HTML>


