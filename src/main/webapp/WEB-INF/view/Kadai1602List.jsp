<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Kadai"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>一覧画面</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>名前</th>
			<th>年齢</th>
			<th>性別</th>
			<th>電話番号</th>
			<th>メールアドレス</th>
		</tr>
	<%

		List<Kadai> list = (ArrayList<Kadai>)request.getAttribute("list");
		for(Kadai s : list) {
	%>
		<tr>
			<td><%=s.getName() %></td>
			<td><%=s.getAge() %></td>
			<td><%=s.getGender() %></td>
			<td><%=s.getTel() %></td>
			<td><%=s.getMail() %></td>
		</tr>
	<%} %>
	</table>
	<a href="./">戻る</a>
</body>
</html>