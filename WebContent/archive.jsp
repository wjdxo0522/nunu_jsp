<%@ page import="java.io.File" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Archive</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar a {
            margin-left: 20px;
        }
        .navbar-brand {
            margin-right: auto;
        }
        .fixed-bottom {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #f9f9f9;
            padding: 10px;
        }
        .file-item {
            border-bottom: 1px solid #ccc;
            padding: 10px;
        }
    </style>
</head>
<body>
    <!-- bloc-0 -->
    <div class="navbar">
        <a class="navbar-brand link-style" href="index.jsp">Nunu</a>
        <div>

           <%
                String user = (String) session.getAttribute("user");
                %>if(user != null && !user.isEmpty()) {

            <a href="logout.jsp" class="a-btn">Logout</a>

                } else {

            <a href="login.jsp" class="a-btn">Login</a>

                }<%
            %>
            <a href="mypage.jsp" class="a-btn">MyPage</a>
        </div>
    </div>
    <!-- bloc-0 END -->
    <!-- Content -->
        <div class="content">
            <!-- Your content here -->
        </div>
        
        <!-- File Upload Form at the bottom -->
        <div class="fixed-bottom">
        <form action="Uploadservlet" method="post" enctype="multipart/form-data">
            <label for="file">업로드할 파일을 선택해주세요:</label>
            <input type="file" name="file" id="file">
            <input type="submit" value="Upload" class="btn">
        </form>
    </div>

      
    
    <!-- List Uploaded Files -->
<h2>자료실</h2>
<hr>
<ul>
    <%
        // 세션에서 작성자 이름을 가져옴
        String username = (String) session.getAttribute("user");
        
        // Replace the path with the actual path to your upload directory
        String uploadPath = application.getRealPath("/uploads");
        File folder = new File(uploadPath);
        if(folder.exists() && folder.isDirectory()) {
            File[] files = folder.listFiles();
            if(files != null && files.length > 0) {
                for(File file : files) {
                    if(file.isFile()) {
                        String fileName = file.getName();
                        int lastSeparatorIndex = fileName.lastIndexOf(File.separator);
                        if (lastSeparatorIndex > -1) {
                            fileName = fileName.substring(lastSeparatorIndex + 1);
                        }
    %>
    <div class="file-item">
        작성자: <%= username %>, 파일 이름: <%= fileName %>
        <a href="Uploadservlet?file=<%= URLEncoder.encode(fileName, "UTF-8") %>">
            <input type="button" value="다운로드">
        </a>
        <a href="Deleteservlet?fileName=<%= URLEncoder.encode(fileName, "UTF-8") %>">
            <input type="button" value="삭제">
        </a>
    </div>

    <%
                    }
                }
            } else {
    %>
    <li>No files have been uploaded.</li>
    <%
            }
        } else {
    %>
    <li>Upload directory does not exist.</li>
    <%
        }
    %>
</ul>
</body>
</html>
