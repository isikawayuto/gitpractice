<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>削除内容</title>
</head>
<body>
	<p>下記の内容で削除します。よろしいですか？</p>
	<%


		String mail = (String)session.getAttribute("mail");
	%>
	メール：<%=mail %><br>
	<a href="Kadai1603ExecuteServlet">OK</a><br>
	<a href="Kadai1603FormServlet">戻る</a>
</body>
</html>