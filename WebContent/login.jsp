<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="shortcut icon" type="image/png" href="favicon.png">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?3125">
    <!--<link rel="stylesheet" type="text/css" href="./css/style.css?2416">  -->
    <link rel="stylesheet" type="text/css" href="./css/animate.min.css?975">
    <link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
    
    <title>Login</title>
</head>
<body>
<div id="page-loading-blocs-notification" class="page-preloader"></div>

<div class="page-container">
    <div class="bloc l-bloc" id="bloc-0">
        <div class="container bloc-sm">
            <div class="row">
                <div class="col">
                    <nav class="navbar row navbar-expand-md navbar-light">
                        <a class="navbar-brand link-style" href="index.jsp">nunu</a>
                        <button id="nav-toggle" type="button" class="ml-auto ui-navbar-toggler navbar-toggler border-0 p-0" data-toggle="collapse" data-target=".navbar-26100">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse navbar-26100">
                            <ul class="site-navigation nav navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="login.jsp" class="a-btn nav-link">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a href="mypage.jsp" class="a-btn nav-link">MyPage</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="bloc l-bloc" id="bloc-2">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                    <!-- 변경된 부분 -->
                    <form id="form_1" action="Loginservlet" method="post" data-form-type="blocs-form">
                        <div class="form-group">
                            <label>
                                ID<br>
                            </label>
                            <label for="name"></label><input id="name" name="id" class="form-control" required />
                        </div>
                        <div class="form-group">
                            <label>
                                PASSWORD<br>
                            </label>
                            <label for="password"></label><input id="password" name="pwd" class="form-control" type="password" placeholder="영문 숫자 특수기호를 이용하여 9글자 이상 입력해주세요." required />
                        </div>
                        <input type="submit" class="btn btn-lg btn-block btn-style btn-black" value="로그인하기">
                    </form>
                    <!-- 변경된 부분 끝 -->
                    <a class="btn btn-d btn-lg btn-block btn-style" href="newacount.jsp">회원가입<br></a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="./js/jquery-3.5.1.min.js?5878"></script>
<script src="./js/bootstrap.bundle.min.js?7117"></script>
<script src="./js/blocs.min.js?5859"></script>
<script src="./js/jqBootstrapValidation.js"></script>
<script src="./js/formHandler.js?6048"></script>
<script src="./js/lazysizes.min.js" defer></script>
</body>
</html>
