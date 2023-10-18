package com.example;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;


public class Deleteservlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("fileName");
        fileName = URLDecoder.decode(fileName, "UTF-8");

        if (fileName != null && !fileName.isEmpty()) {
            String uploadPath = getServletContext().getRealPath("/uploads");
            File file = new File(uploadPath + File.separator + fileName);
            if (file.exists() && file.isFile()) {
                file.delete();
            }
        }

        response.sendRedirect("archive.jsp");
    }
}
