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
    
    <title>修改学生</title>
  </head>
  
  <body>
	<form action="stu/update.do" method="post">
	<table>
		<tr>
			<td>编号：</td>
			<td>${s.id}
				<input type="hidden" name="id" value="${s.id}"/>
			</td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input name="name" value="${s.name}"/></td>
		</tr>	
		<tr>
			<td>性别：</td>
			<td><input name="sex" type="radio" value="true" ${s.sex?"checked='checked'":""}/>男
				<input name="sex" type="radio" value="false"  ${s.sex?"":"checked"}/>女
			</td>
		</tr>
		<tr>
			<td>生日：</td>
			<td><input name="birthday" value='<fmt:formatDate value="${s.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/>'/></td>
		</tr>
		<tr>
			<td>分数：</td>
			<td><input name="score" value="${s.score}"/></td>
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










