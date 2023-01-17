<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>削除画面</title>
</head>
<body>
	<%

		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			String mail = (String)session.getAttribute("mail");
	%>
		<p style="color:red">削除に失敗しました。</p>
		<h3>削除項目登録</h3>
		<form action="Kadai1603ConfirmServlet" method="post">
			メール:<input type="email" name="mail" value="<%=mail%>"><br>
			<input type="submit" value="削除">
		</form>
	<%
		} else {
	%>
	<h3>削除項目登録</h3>
	<form action="Kadai1603ConfirmServlet" method="post">
			メール:<input type="email" name="mail"><br>
			<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>