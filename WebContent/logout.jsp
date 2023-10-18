<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logging Out</title>
</head>
<body>
    <%
        // 세션 무효화 (로그아웃 처리)
        session.invalidate();
        
        // 메인 페이지로 리다이렉트
        response.sendRedirect("index.jsp");
    %>
</body>
</html>
