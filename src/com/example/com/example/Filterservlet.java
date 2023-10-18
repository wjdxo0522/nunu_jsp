package com.example;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;

public class Filterservlet implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 필터 초기화 로직
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false);

        // 세션 정보 로깅
        if (session != null) {
            System.out.println("Before servlet execution - Session ID: " + session.getId());
            Enumeration<String> attributeNames = session.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String name = attributeNames.nextElement();
                System.out.println("Attribute Name: " + name + ", Attribute Value: " + session.getAttribute(name));
            }
        } else {
            System.out.println("Before servlet execution - No existing session.");
        }

        chain.doFilter(request, response); // 다음 필터 또는 서블릿을 호출

        session = httpRequest.getSession(false);
        if (session != null) {
            System.out.println("After servlet execution - Session ID: " + session.getId());
        } else {
            System.out.println("After servlet execution - No existing session.");
        }
    }

    @Override
    public void destroy() {
        // 필터 소멸 로직
    }
}
