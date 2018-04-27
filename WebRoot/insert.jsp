<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增学生</title>
  </head>
  
  <body>
	<form action="stu/insert.do" method="post">
	<table>
		<tr>
			<td>姓名：</td>
			<td><input name="name" /></td>
		</tr>	
		<tr>
			<td>性别：</td>
			<td><input name="sex" type="radio" value="true" checked="checked"/>男
				<input name="sex" type="radio" value="false"/>女
			</td>
		</tr>
		<tr>
			<td>生日：</td>
			<td><input name="birthday" /></td>
		</tr>
		<tr>
			<td>分数：</td>
			<td><input name="score"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="保存"/>
				<input type="reset" />
			</td>
		</tr>	
	</table>
	</form>
  </body>
</html>










