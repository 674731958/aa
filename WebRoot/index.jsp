<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>显示学生信息</title>
    <style type="text/css">
    	*{margin: 0px; padding: 0px;}
    	table{border-collapse: collapse; width:800px; margin: 0px auto; text-align: center; cursor: pointer;}
    	td,th{border:1px solid #f00;}
    	tr{height:50px; line-height: 50px;}
    	thead tr{background-color: #ccc;}
    	a{text-decoration: none;}
    	a:hover{text-decoration: underline;}
    	p{width: 800px; margin: 0px auto;}
    </style>
  </head>
  
  <body>
    <c:if test="${list==null}">
    	<c:redirect url="stu/list.do"></c:redirect>
    </c:if>
    <table>
    	<thead>
    	<tr>
    		<th>编号</th>
    		<th>姓名</th>
    		<th>性别</th>
    		<th>生日</th>
    		<th>成绩</th>
    		<th>操作</th>
    	</tr>
    	</thead>
    	<tbody>
    	<c:forEach items="${list}" var="s" varStatus="i">
    	<tr style="background-color: ${i.index%2==0?'#FFC8B4':'#99FFFF'}"
    		onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#f00';"
    		onmouseout="this.style.backgroundColor=c"
    	>
    		<td><a href="stu/selbyid.do?id=${s.id}">${s.id}</a></td>
    		<td>${s.name}</td>
    		<td>${s.sex?"男":"女"}</td>
    		<td><fmt:formatDate value="${s.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    		<td>${s.score}</td>
    		<td><a href="stu/del.do?id=${s.id}" onclick="return confirm('是否删除?');">删除</a></td>
    	</tr>
    	</c:forEach>
    	</tbody>
    </table>
    <p><a href="insert.jsp">新增</a></p>
  </body>
</html>













