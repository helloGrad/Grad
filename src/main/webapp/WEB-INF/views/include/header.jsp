<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<base target="_self" /> 

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>
<script defer src="${pageContext.request.contextPath }/resources/js/fontawesome.js"></script>
<script defer src="${pageContext.request.contextPath }/resources/js/packs/regular.js"></script>
<script defer src="${pageContext.request.contextPath }/resources/js/packs/solid.js"></script>
<script defer src="${pageContext.request.contextPath }/resources/js/packs/brands.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script>
var boardtype; 
</script>


<link href="${pageContext.request.contextPath}/resources/css/bootstrap-social1.css" rel="stylesheet"> 	
<link href="${pageContext.request.contextPath}/resources/css/login1.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">		


<style>
body {
    background-color: rgb(247, 245, 242);
    padding-top: 4em;
}

.w3-lobster {
    font-family: "Comic Sans MS", cursive, sans-serif;
}

.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

@media (min-width: 768px) {
    .container {
        width: 750px;
    }
}

@media (min-width: 992px) {
    .container {
        width: 970px;
    }
}

@media (min-width: 1200px) {
    .container {
        width: 1300px;
    }
}

.main-banner {
    box-shadow: 5px 5px 5px rgba(51, 26, 0, 0.3), -1px -1px 10px rgba(102, 53, 0, 0.4);
    margin-bottom: 1.5em;
    background-color: white;
}

.board-answer {
    background-color: rgb(242, 245, 247);
}

.bar-deco {
    text-decoration: none;
    letter-spacing: 4px;
}

.ad-title {
    max-height: 20em;
    object-fit: cover;
}

.navi-background {
    background-color: rgba(238, 236, 234, 0.95);
}
#map {
    height: 400px;
    width: 100%;
}
.humanties{
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/humanities.jpg);
    background-size: cover;
}
.socialscience {
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/social-science.jpg);
    background-size: cover;
}
.naturalscience {
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/natural-science.jpeg);
    background-size: cover;
}
.engineering {
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/Engineering.jpg);
    background-size: cover;
}
.medicine {
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/medicine.jpg);
    background-size: cover;
}
.ocean{
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/ocean.jpeg);
    background-size: cover;
}
.art {
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/art-education.jpg);
    background-size: cover;
}
.interdisciplinary {
    z-index: 1;
    background-image: url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/interdisciplinary.jpg);
    background-size: cover;
}
</style>



<script>

	$(function() {

		$(".searchBtn").click(function(event) {

			if ($(".search").hasClass("hide") === true) {

				$(".search").removeClass("hide");
			} else {
				$(".search").addClass("hide");

			}

		});

	})
	
	
	
	//사이드 메뉴
function openRightMenu() {
    document.getElementById("rightMenu").style.display = "block";
}

function closeRightMenu() {
    document.getElementById("rightMenu").style.display = "none";
}

//사이드 메뉴 end


//로그인 메뉴
function loginForm() {
    document.getElementById("loginForm").style.display = "block";
}

function closeLogin() {
    document.getElementById("loginForm").style.display = "none";
}

//로그인 메뉴 end

//회원가입 메뉴
function registerForm() {
    document.getElementById("registerForm").style.display = "block";
}

function closeRegister() {
    document.getElementById("registerForm").style.display = "none";
}

//회원가입 메뉴 end

//서치 메뉴
function searchForm() {
    document.getElementById("searchForm").style.display = "block";
}

function closeSearch() {
    document.getElementById("searchForm").style.display = "none";
}

//서치 메뉴 end

// 메뉴 닫기
window.onclick = function (e) {
    if (e.target == document.getElementById("registerForm")) {
        closeRegister();
    }
    if (e.target == document.getElementById("loginForm")) {
        closeLogin();
    }
    if (e.target == document.getElementById("searchForm")) {
        closeSearch();
    }
}
$(document).keydown(function (e) {
    if (e.keyCode == 27) {
        closeRegister();
        closeLogin();
        closeMenu();
        closeSearch();
    }
});
// 메뉴 닫기 end


</script>

</head>

<div class="w3-top">
    <div class="w3-bar w3-border navi-background">
        <div class="container">
            <button id="headerBtn" class="w3-bar-item w3-button w3-padding-16 writeBtn" style="letter-spacing: 3px;"><i
                    class="fas fa-pen"></i> 글쓰기
            </button>
            
            
            <div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right" style="display:none;right:0;"
                 id="rightMenu">
                <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large w3-black">Close &times;
                </button>
                
               			 <a href="${pageContext.servletContext.contextPath }/submain" class="w3-bar-item w3-button w3-padding-16"
		                   style="letter-spacing: 3px;">HOME</a>
		                <a href="${pageContext.servletContext.contextPath }/user/mypage" class="w3-bar-item w3-button w3-padding-16"
		                   style="letter-spacing: 3px;">PROFILE</a>
		                <a href="saves.html" class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;">SAVE</a>
		                <a href="${pageContext.servletContext.contextPath }/user/setting" class="w3-bar-item w3-button w3-padding-16"
		                   style="letter-spacing: 3px;">SETTING</a>
		                <a href="help.html" class="w3-bar-item w3-button w3-border-bottom w3-padding-16"
		                   style="letter-spacing: 3px;">HELP CENTER</a>
                
                
                <input id="authUser" type="hidden" value="${authUser.mbNo }">
                 <c:choose>
					<c:when test="${empty authUser }">
						
						 <button id="myBtnlogin" onclick="modalOpen();" class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;">LOGIN</button>
						  <button onclick="modalOpen2();" class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;">REGISTER</button>
						  
						  
						  <button onclick="loginForm()" class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;">
		                    LOGIN
		                </button>
		                     <button onclick="registerForm()" class="w3-bar-item w3-button w3-padding-16"
		                        style="letter-spacing: 3px;">REGISTER
		                </button>
						  
					</c:when>
					<c:otherwise>
						
						
		                   
						 
				<button onclick="location.href='${pageContext.servletContext.contextPath }/user/logout' " id="logout" class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;">LOGOUT</button>
						

					</c:otherwise>
				</c:choose>
				
               
                </div>
               
               
           <div id="login" class="login-modal" >
		   <div class="login-modal-content">
		   
		  
		   		 <span class="close">×</span>
		
		   		 
		      <div class="signupbnt">
		      	
		       
		          <a id="loginBtn" class="btn btn-social btn-facebook socialbtn">
   				 <span class="fa fa-facebook"></span> 페이스북 아이디로 로그인
 				 </a>	
 				 	
		        
		         <div id="naver_id_login">
		        
 				 </div>
 			
 			
 				<div class="login-devider"><span>또는</span></div>
 				
		    
		         
		         	<div class="form-group1">
					<input type="text"
							class="form-control logininputbox" id="email" name="iden"
							placeholder="Enter email">
					</div>
					
					<div id='emailMsg' class="text-danger"></div>
					
					<div class="form-group1">
					 <input type="password"
							class="form-control logininputbox" id="pwd" name="pw"
							placeholder="Enter password">
					</div>
					

					<div id="passwdMsg" class="text-danger"></div>
					
					 <div id="loginMsg" class="text-danger"></div>
					 
					<div class="form-group">
						<label class="remember-me"><input type="checkbox"> 로그인 상태 유지 </label>
						
						<p class="sighup">
						<a href="javascript:void(0);" onclick="modalOpen3();">비밀번호 찾기</a>  /  <a href="javascript:void(0);" onclick="modalOpen2();">회원가입</a>
						</p>
					    
					</div>

		         <button type="submit" class="btn formbtn" onclick="login();" >로그인</button>
		      	<div class="login">
				
			    </div>	
		      	 
			
		      </div>
		      
		      <span class="close"></span>
		   </div>
		</div>
		
		
		
	<div id="signup" class="login-modal">
		<div class="login-modal-content">
			<span class="close">×</span>

			<div class="signupbnt">

				<button id="facebookLogin"
					class="btn btn-social btn-facebook socialbtn">
					<span id="facebooklogo" class="fa fa-facebook"></span> 페이스북으로 계속하기
				</button>

				<button id="naverLoginBtn2"
					class="btn btn-social socialbtn naverlogin" style='color: white;'>
					<span id='naverLogo' class="fa "></span> 네이버로 계속하기
				</button>

			</div>
			<div class="login-devider">
				<span>또는</span>
			</div>

			<form action="#" id="join-form">
				<div class="input">

					<div class="signupinput">
						<input type="text" class="inputbox" id="nickname"
							placeholder="닉네임(2~8자리)" name="nknm">
						<div class="checkinput" id="nicknamecheck">경고</div>
					</div>

					<div class="signupinput">
						<input type="text" class="inputbox" id="remail" placeholder="이메일"
							name="iden">
						<div class="checkinput" id="emailcheck">경고</div>
					</div>

					<div class="signupinput">
						<input type="password" class="inputbox" placeholder="비밀번호(6~20자)"
							id="rpwd" name="pw">
						<div class="checkinput" id="pwdcheck">경고</div>
					</div>
					<div class="signupinput" id="lastinput">
						<input type="password" class="inputbox" placeholder="비밀번호 확인"
							id="rpwd_again">
						<div class="checkinput" id="pwdcheck2">경고</div>
					</div>
					<hr class="loginhr">
					<div class="gender">
						<label class="genderlabel on-gender" id="M"> <input type="radio"
							name="sex" value="M" id="radiomale" checked
							onclick="changeGenderColor(this);"> 남자
						</label> <label class="genderlabel" id="F"> <input type="radio"
							name="sex" value="F" id="radiofemale"
							onclick="changeGenderColor(this);">여자
						</label>
					</div>
					<div class="birth">
						<input type="number" name="birdt" maxlength="4" id="birthy"
							max="9999" min="1900" maxlength="4"
							oninput="maxLengthCheck(this)">
					</div>
					<div class="birth">
						<select id="birthm" name="birdt">
							<option selected disabled id="selectm">월</option>
						</select>
					</div>
					<div class="birth">
						<select id="birthd" name="birdt">
							<option selected disabled id="selectd">일</option>
						</select>
					</div>
					<button type="submit" class="btn formbtn">회원가입</button>
				</div>
			</form>
			<div class="login">
				이미 가입한 회원이라면 <a onclick="modalOpen();" href="javascript:void(0);">로그인
					하러 가기</a>
			</div>
		</div>
	</div>
	

               
             
               
               
                
                <div id="loginForm" class="w3-modal w3-animate-opacity">
                    <div class="w3-modal-content w3-card-2 w3-round-large w3-padding-16" style="max-width: 420px">
                        <header class="w3-container w3-padding-16">
                            <span class="w3-large w3-text-grey ">@로그인</span>
                        </header>
                        <form class="w3-container w3-border-bottom" action="">
                            <input class="w3-input w3-margin-bottom w3-large w3-padding-16" type="text"
                                   placeholder="mail@mail.com" style="letter-spacing: 2px;">
                            <input class="w3-input w3-margin-bottom w3-large w3-padding-16 empty" type="text"
                                   placeholder="PASSWORD" style="letter-spacing: 2px;">
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-text-white w3-round"
                                    style="background: linear-gradient(141deg,#006600, #009900, #7fc257 ); letter-spacing: 3px;">
                                LOGIN
                            </button>
                        </form>
                        <footer class="w3-container w3-padding-16">
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
                                    style="background-color:  #00aced;">
                                <i class="fab fa-twitter w3-text-white fa-lg w3-left"></i><span class="w3-text-white"> Login with Twitter</span>
                            </button>
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
                                    style=" background-color:#3b5998;">
                                <i class="fab fa-facebook w3-text-white fa-lg w3-left"></i><span class="w3-text-white"> Login with Facebook</span>
                            </button>
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom w3-border w3-border-blue">
                                <i class="fab fa-google-plus-g fa-lg w3-left"></i> Login with Google
                            </button>
                            <button onclick=""
                                    class="w3-button w3-right w3-margin-left w3-round-large"
                                    style="letter-spacing: 3px;">Register
                            </button>
                            <button onclick="closeLogin()" class="w3-button w3-left w3-round-large"
                                    style="letter-spacing: 3px;">Cancel
                            </button>
                        </footer>
                    </div>
                </div>
                

                
                <div id="registerForm" class="w3-modal w3-animate-opacity">
                    <div class="w3-modal-content w3-card-2 w3-round-large w3-padding-16" style="max-width: 420px;">
                        <header class="w3-container w3-padding">
                            <span class="w3-large w3-text-grey ">@회원가입</span>
                        </header>
                        <form class="w3-container" action="">
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
                                    style="background-color:  #00aced;">
                                <i class="fab fa-twitter w3-text-white fa-lg w3-left"></i><span class="w3-text-white"> Continue with Twitter</span>
                            </button>
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
                                    style=" background-color:#3b5998;">
                                <i class="fab fa-facebook w3-text-white fa-lg w3-left"></i><span class="w3-text-white"> Continue with Facebook</span>
                            </button>
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom w3-border w3-border-blue">
                                <i class="fab fa-google-plus-g fa-lg w3-left"></i> Continue with Google
                            </button>
                            <input class="w3-input w3-margin-bottom w3-large w3-padding-16" type="text"
                                   placeholder="NAME" style="letter-spacing: 2px;">
                            <input class="w3-input w3-margin-bottom w3-large w3-padding-16" type="text"
                                   placeholder="E-MAIL" style="letter-spacing: 2px;">
                            <input class="w3-input w3-margin-bottom w3-large w3-padding-16" type="text"
                                   placeholder="PASSWORD" style="letter-spacing: 2px;">
                            <button class="w3-button w3-block w3-margin-bottom w3-large w3-text-white w3-round w3-margin-top w3-margin-bottom"
                                    style="background: linear-gradient(141deg,#006600, #009900, #7fc257 ); letter-spacing: 3px;">
                                REGISTER
                            </button>
                        </form>
                        <footer class="w3-container w3-padding-16">
                            <button onclick=""
                                    class="w3-button w3-right w3-margin-left w3-round-large"
                                    style="letter-spacing: 3px;">Login
                            </button>
                            <button onclick="closeRegister()" class="w3-button w3-left w3-round-large"
                                    style="letter-spacing: 3px;">Cancel
                            </button>
                        </footer>
                    </div>
                </div>
           
            <div class="">
                <button class="w3-button w3-bar-item w3-right w3-padding-16" onclick="openRightMenu()">
                    <i class="fas fa-chevron-down"></i></button>
            </div>
            <button onclick="searchForm()" class="w3-bar-item w3-button w3-right w3-padding-16">
                <i class="fas fa-search"></i>
            </button>
            
            
            <div id="searchForm" class="w3-modal">
                <div class="w3-bar w3-modal-content w3-card-2 w3-round-large w3-padding-16 w3-content" style="width: 80%;">
                    <form name="searchform" action="${pageContext.servletContext.contextPath }/search">
                        <div class="w3-content">
                            <input type="text" name="text" class="w3-bar-item w3-xlarge w3-border-0 w3-padding-16 w3-left" placeholder="SEARCH…"
                                   style="width: 80%;">
                            <button type="submit" class="w3-bar-item w3-xlarge w3-orange w3-text-white w3-round-xlarge w3-right w3-margin-right"><i class="fas fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
            
            <c:import url="/WEB-INF/views/modal/write.jsp" />
            
        </div>
    </div>
</div>



<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modalLogin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login.js"></script>




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/counseling.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/signup.js"></script>

		
		

