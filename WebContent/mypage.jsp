<%@ page import="member.memberDAO, member.memberVO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>
</head>
<body>
    <%
        // 세션에서 사용자 ID 가져오기 (로그인 구현에 따라 다를 수 있습니다)
        String userId = (String) session.getAttribute("userId");
        
        // DAO 인스턴스 생성 및 로그인 함수 호출
        memberDAO dao = new memberDAO();
        memberVO vo = dao.login(userId);
        
        if(vo != null) {
    %>
    <nav>
        <a href="index.jsp">홈</a> |
        <a href="logout.jsp">로그아웃</a>
    </nav>

    <section>="personalInfo"
        <h1>개인 정보</h1>
        <p>아이디: <%= vo.getId() %></p>
        <p>이름: <%= vo.getName() %></p>
        <p>이메일: <%= vo.getEmail() %></p>
    </section>
		System.out.println();
    <%
        } else {
    %>             
        <p>사용자 정보를 불러오는 데 실패했습니다.</p>
    <%
        }
    %>
</body>
</html>
