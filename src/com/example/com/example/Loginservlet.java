package com.example;
import member.memberDAO;
import member.memberVO;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class Loginservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Login attempt started");

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        System.out.println("ID: " + id);

        memberDAO dao = new memberDAO();
        memberVO vo = dao.login(id);

        if (vo == null) {
            log("No user found with id: " + id);
            System.out.println("No user found with id: " + id);
            response.sendRedirect("login.jsp?error=true");
            return;
        }

        if (!vo.getPwd().equals(pwd)) {
            log("Password does not match for id: " + id);
            System.out.println("Password does not match for id: " + id);
            response.sendRedirect("login.jsp?error=true");
            return;
        }

        HttpSession session = request.getSession(true);
        session.setAttribute("user", vo.getName());
        System.out.println("User name set in session: " + vo.getName());

        System.out.println("Login successful for id: " + id);
        System.out.println("Redirecting to loginOk.jsp");
        response.sendRedirect("loginOk.jsp");
    }
}
