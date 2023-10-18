<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="shortcut icon" type="image/png" href="favicon.png">
    
   <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css?7856">
   <link rel="stylesheet" type="text/css" href="./style.css?305">
   <link rel="stylesheet" type="text/css" href="./css/animate.min.css?8554">
   <link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
   
   <style>
      .col-md-6{
         margin: 0 auto;
      }
   </style>
    <title>NewAccount</title>


    
<!-- Analytics -->
 
<!-- Analytics END -->
    
</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">
    
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
<!-- bloc-0 END -->

<!-- bloc-27 -->
<div class="bloc l-bloc" id="bloc-27">
   <div class="container bloc-sm">
      <div class="row">
         <div class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
            <h1 class="mg-md text-lg-center">
               <strong>회원가입하기</strong>
            </h1>
         </div>
      </div>
   </div>
</div>
<!-- bloc-27 END -->

<!-- bloc-28 -->
<div class="bloc none l-bloc" id="bloc-28">
   <div class="container b-divider bloc-md">
      <div class="row">
         <div class="col-md-6">
            <form action="Registerservlet" method="post">
            <div class="row">
               <div class="col">
                  <h4 class="mg-md btn-resize-mode h4-style" style="margin-bottom: 30px;">
                      아이디
                  </h4>
                  <h4 class="mg-md btn-resize-mode h4-style" style="margin-bottom: 30px;">
                     비밀번호
                     <br>
                  </h4>
                  
                  <h4 class="mg-md btn-resize-mode h4-style" style="margin-bottom: 30px;">
                     이름
                     <br>
                  </h4>
                  <h4 class="mg-md btn-resize-mode h4-style" style="margin-bottom: 30px;">
                     이메일
                     <br><br><br>
                  </h4>
                  
               </div>
               <div class="col col-lg-6">
                  <div class="form-group">
                     <div class="form-group">
                        <div class="form-group">
                           <input class="form-control" name="id" placeholder="6자 이상의 영문 혹은 영문, 숫자 조합" data-placement="bottom" data-toggle="tooltip" title="사용가능한 아이디입니다." />
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="form-group">
                           <input class="form-control" name="pwd" placeholder="비밀번호를 입력하세요." />
                        </div>
                        
                        <div class="form-group">
                           <input class="form-control" name="name" placeholder="이름을 입력해주세요." />
                        </div>
                        <div class="form-group">
                           <input class="form-control" name="email" placeholder="ex) OOO@naver.com" />
                        </div>
                        
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
            
         </div>
         
         <div class="col offset-lg-4">
            <input type="submit" class="btn btn-lg btn-44-style btn-black" value="가입하기"/>
         </div>
         <div class="col offset-lg-4">
               <a href="login.jsp" class="btn btn-lg btn-44-style btn-black">뒤로가기</a>
         </div>
         </form>
      </div>
   </div>
</div>
<!-- bloc-28 END -->

<!-- ScrollToTop Button -->
<a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><span class="fa fa-chevron-up"></span></a>
<!-- ScrollToTop Button END-->



</div>
<!-- Main container END -->
    

<script src="./js/jquery-3.5.1.min.js?5878"></script>
<script src="./js/bootstrap.bundle.min.js?7117"></script>
<script src="./js/blocs.min.js?5859"></script>
<script src="./js/lazysizes.min.js" defer></script>
<!-- Additional JS END -->


</body>
</html>
