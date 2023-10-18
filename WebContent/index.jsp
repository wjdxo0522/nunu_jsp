<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="shortcut icon" type="image/png" href="./favicon.png">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" type="text/css" href="./css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
    <title>Nunu에 오신 걸 환영합니다.</title>
    <style>
        #bloc-1 {
            background-image: url('./img/citysky.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }
        
        .center-content {
            align-items: center;
            justify-content: center;
            min-height: 100vh;  /* 뷰포트의 높이에 따라 높이를 설정 */
        }
    </style>
</head>
<body>

<%
    String username = (String) session.getAttribute("user");
%>

<!-- bloc-0 -->
<div class="bloc l-bloc" id="bloc-0">
    <div class="container bloc-sm">
        <div class="row">
            <div class="col">
                <nav class="navbar row navbar-expand-md navbar-light" role="navigation">
                    <a class="navbar-brand link-style" href="index.jsp">Nunu</a>
                    <button id="nav-toggle" type="button" class="ml-auto ui-navbar-toggler navbar-toggler border-0 p-0" data-toggle="collapse" data-target=".navbar-26100" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse navbar-26100">
                        <ul class="site-navigation nav navbar-nav ml-auto">
                        <% if (username != null) { %>
                            <li class="nav-item">
                                <span class="a-btn nav-link">Welcome, <%= username %>!</span>
                            </li>
                            <li class="nav-item">
                                <a href="Logoutservlet" class="a-btn nav-link">Logout</a>
                            </li>
                            <li class="nav-item">
                                <a href="mypage.jsp" class="a-btn nav-link">MyPage</a>
                            </li>
                        <% } else { %>
                            <li class="nav-item">
                                <a href="login.jsp" class="a-btn nav-link">Login</a>
                            </li>
                        <% } %>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- bloc-0 END -->

<!-- bloc-1 -->
<div class="bloc bloc-fill-screen bgc-glitter bg-citysky l-bloc" id="bloc-1">
    <div class="container fill-bloc-top-edge">
        <div class="row">
            <div class="col-12">           
                <div class="row">
                    <div class="col-12"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="container center-content">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 order-lg-0">
                <h1 class="mg-md text-center">
                    <strong>Nunu Contents</strong>
                </h1>
                <div class="divider-h">
                    <span class="divider"></span>
                </div>
                <div class="form-group">
                    <input class="form-control field-bloc-1-style" placeholder="검색어를 입력하세요." />
                    <a href="index.jsp" class="btn btn-d btn-lg btn-block">검색하기</a>
                </div>
                <div class="form-group">
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                </div>
                <a href="borad.jsp" class="btn btn-wire btn-게시판-style btn-xl float-lg-none">게시판</a>
                <a href="archive.jsp" class="btn btn-wire btn-자료실-style btn-xl">자료실</a>
                <a href="review.jsp" class="btn btn-wire btn-후기작성-style btn-xl">후기작성</a>
            </div>
        </div>
    </div>
    <div class="container fill-bloc-bottom-edge">
        <div class="row">
            <div class="col-12">
                <div class="text-center">
                    <a href="#" data-scroll-speed="1000" onclick="scrollToTarget('0',this)">
                        <span class="fa fa-angle-down icon-md animated bounce animDelay08"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bloc-1 END -->

<!-- ScrollToTop Button -->
<a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)">
    <span class="fa fa-chevron-up"></span>
</a>

<!-- ScrollToTop Button END-->

<script src="./js/jquery-3.5.1.min.js"></script>
<script src="./js/bootstrap.bundle.min.js"></script>
<script src="./js/blocs.min.js"></script>
<script src="./js/lazysizes.min.js" defer></script>
</body>
</html>
