<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="changeBean" class="mybean.data.Input" scope="request"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<title>��Ʒ�ϴ�</title>
<HTML><BODY background=image/1.jpg><Font size=2>
<div align="center">
<FORM action="InputServlet" method="post" name=form>
<table>
  <td>�û�����:<Input type=text name="logname" ></td>
  <td>������Ʒ:<Input type=text name="need"></td>
  <td>������Ʒ:<Input type=text name="changeout"></td>
  <td><Input type=submit name="g" value="�ύ"></td>
</table>
</Form>
</div >
<div align="center">
<p> ¼�뷴����
<jsp:getProperty name="changeBean"  property="backNews" /> 
<table border=3>
    
     <tr><td>�û�����:</td>
     <td><jsp:getProperty name="changeBean" property="logname"/></td>
     </tr>
     <tr><td>������Ʒ:</td>
     <td><jsp:getProperty name="changeBean" property="need"/></td>
     </tr>
     <tr><td>������Ʒ:</td>
     <td><jsp:getProperty name="changeBean" property="changeout"/><br></td>
     </tr>
</table></div >
</Body></HTML>


