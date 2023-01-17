<%@page import="dto.Kadai"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>下記の内容で登録します。よろしいですか？</p>
	<%


		Kadai Kadai = (Kadai)session.getAttribute("input_data");
	%>
	名前：<%=Kadai.getName() %><br>
	年齢：<%=Kadai.getAge() %><br>
	性別：<%=Kadai.getGender() %><br>
	電話番号<%=Kadai.getTel() %><br>
	メール：<%=Kadai.getMail() %><br>
	パスワード：********<br>
	<a href="Kadai1601ExecuteServlet">OK</a><br>
	<a href="Kadai1601FormServlet">戻る</a>
</body>
</html>