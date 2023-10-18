package com.example;

import member.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Registerservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("RegisterServlet doPost started"); // 로그 시작

        String id = req.getParameter("id");
        String pwd = req.getParameter("pwd");
        String name = req.getParameter("name");
        String email = req.getParameter("email");

        System.out.println("Received Parameters: id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email); // 파라미터 로깅

        memberVO vo = new memberVO(id, pwd, name, email);
        memberDAO dao = new memberDAO();

        if (dao.memberInsert(vo)) {
            System.out.println("Member insert successful, redirecting to newacountsuccess.jsp"); // 성공 로그
            resp.sendRedirect("/nunu/newacountsuccess.jsp");
        } else {
            System.out.println("Member insert failed, redirecting to newacountfail.jsp"); // 실패 로그
            resp.sendRedirect("/nunu/newacountfail.jsp");
        }
    }
}
