<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<base target="_self" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.min.css">
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w3.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>
<script defer
	src="${pageContext.request.contextPath }/resources/js/fontawesome.js"></script>
<script defer
	src="${pageContext.request.contextPath }/resources/js/packs/regular.js"></script>
<script defer
	src="${pageContext.request.contextPath }/resources/js/packs/solid.js"></script>
<script defer
	src="${pageContext.request.contextPath }/resources/js/packs/brands.js"></script>
<script defer
	src="${pageContext.request.contextPath }/resources/js/packs/light.js"></script>
<script>
	var boardtype;
</script>



<style>
body {
	background-color: rgb(255, 255, 255);
	padding-top: 4em;
}



.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

@media ( min-width : 768px) {
	.container {
		width: 750px;
	}
}

@media ( min-width : 992px) {
	.container {
		width: 970px;
	}
}

@media ( min-width : 1200px) {
	.container {
		width: 1300px;
	}
}

.main-banner {
	box-shadow: 5px 5px 5px rgba(51, 26, 0, 0.3), -1px -1px 10px
		rgba(102, 53, 0, 0.4);
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

.humanties {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/humanities.jpg);
	background-size: cover;
}

.socialscience {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/social-science.jpg);
	background-size: cover;
}

.naturalscience {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/natural-science.jpeg);
	background-size: cover;
}

.engineering {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/Engineering.jpg);
	background-size: cover;
}

.medicine {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/medicine.jpg);
	background-size: cover;
}

.ocean {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/ocean.jpeg);
	background-size: cover;
}

.art {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/art-education.jpg);
	background-size: cover;
}

.interdisciplinary {
	z-index: 1;
	background-image:
		url(https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-563282106598/college-logo/interdisciplinary.jpg);
	background-size: cover;
}

.black{
	background-color:rgba(0,0,0,0.7);
	background-blend-mode:overlay;
}
.major-nav-box {
	box-shadow: 5px 10px 20px rgba(0, 0, 0, 0.1), -1px -1px 20px
		rgba(0, 0, 0, 0.15);
}

.nav-menu {
	letter-spacing: 5px;
	font-size: 1vw;
}

.nav-menu>li {
	margin-right: 0.5em;
	margin-left: 0.5em;
}

.nav-menu>li>a:hover {
	text-decoration: none;
}

.distinct-line {
	padding-top: 2.5em;
}


.grad-target {
	font-weight: 600;
}

.research-field {
	height: 4em;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: normal;
}

.scrap-on {
	color: #FF0000;
}

.noti-card {
	cursor: pointer;
}

.noti-hh {
	cursor: pointer;
}

.grad-banner {
            box-shadow: 3px 3px 10px rgba(179, 0, 0, 0.3), -1px -1px 10px rgba(255, 153, 153, 0.3);
            margin-bottom: 1.5em;
        }
        .lab-banner {
            box-shadow: 3px 3px 10px rgba(0, 0, 255, 0.3), -1px -1px 10px rgba(217, 179, 255, 0.3);
            margin-bottom: 1.5em;
        }
        .conf-banner {
            box-shadow: 3px 3px 10px rgba(0, 128, 0, 0.3), -1px -1px 10px rgba(179, 230, 179, 0.3);
            margin-bottom: 1.5em;
        } 
        .short-cut{
            text-decoration: none;
            color:gray;
        }
        .short-cut:hover{
            color:indianred;
        }
        .swiper-container {
            height: 200px;
            z-index : 0;
        }
        .swiper-slide {
            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
</style>





<script>

		
	$(document).keydown(function(e) {
		if (e.keyCode == 27) {
			closeRegister();
			closeLogin();
			closeMenu();
			closeSearch();
		}
	});
	
	function goToRegiter(){
		closeLogin();
		registerForm();
	}
	
	function goToLogin(){
		closeRegister();
		loginForm();
	}
	function initSignupModal() {
		$("#nknmcheck").removeClass("oninput");
		$("#nknmcheck").empty();
		$("#idencheck").removeClass("oninput");
		$("#idencheck").empty();
		$("#pwcheck").removeClass("oninput");
		$("#pwcheck").empty();
	//	$("#pwcheck2").removeClass("oninput");
	//	$("#pwcheck2").empty();
		$("#nickname").val('');
		$("#remail").val('');
		$("#rpwd").val('');
		$("#rpwd_again").val('');
		$("#birthyn").val('');
		$("#radiomale").prop("checked", true);
		$(".genderlabel").removeClass("on-gender");
		$("#M").addClass("on-gender");
		$("#birthy").val('');
		$("#selectm").prop("selected", true);
		$("#selectd").prop("selected", true);
		$("#rpwd").attr("type", "text"); 
	}
	function initLoginModal() {
		$("#emailMsg").empty();
		$("#passwdMsg").empty();
		$("#loginMsg").empty();
		$("#email").val('');
		$("#pwd").val('');
	}
	// 메뉴 닫기 end

</script>
<script type="text/javascript">
	$(function() {
			
		var authUser = $("#authUser").val();
		
		
		if(authUser == null || authUser == "" ){
			
			
		}else{
			
		
			var scrapList=JSON.parse('${scrapList}');
			for(var i=0;i<scrapList.length;i++){

				if(scrapList[i].prntsDstnct==='모집공고'){ 
					
					$('.do-scrapnoti' + scrapList[i].prntsNo).addClass('w3-text-red');
				}
			};	
			
		};	
		

		
	});
	
</script>

</head>

<div class="w3-top">
	<div class="w3-bar w3-border navi-background">
		<div class="container">
		
			<div class="w3-dropdown-hover">
                <button class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;" onclick="myFunction(true)">
                    HGN
                </button>
                <div id="Shortcuts" class="w3-dropdown-content w3-bar-block w3-card-4  w3-col s10 m6 l5" style="margin-top: 3em;">
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/" style="text-decoration: none;">
                            <div class="w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding ">
                                    <div><i class="far fa-home fa-2x  "></i></div>
                                    <span style="font-size:  1.5vmin;">홈</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4 ">
                        <a style="text-decoration: none;" onclick="mypage('${authUser.mbNo }')">
                            <div class="w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-user fa-2x"></i></div>
                                    <span style="font-size:  1.5vmin;">마이페이지</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a class="setting" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey" onclick="setting('${authUser.mbNo }')">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-cogs fa-2x "></i></div>
                                    <span style="font-size:  1.5vmin;">설정</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=공학" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-wrench fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">공학</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=농수해양학" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-tree-alt fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">농수해양학</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=복합학" class="w3-hover-opacity w3-hover-red" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-code-merge fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">복합학</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4 ">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=사회과학" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-users fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">사회과학</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=인문학" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-universal-access fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">인문학</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=의약학" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-medkit fa-2x "></i></div>
                                    <span style="font-size:  1.5vmin;">의약학</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=예술체육학" style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-film-alt fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">예술체육학</span>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="w3-col s4 m4 l4">
                        <a href="${pageContext.servletContext.contextPath }/study/main?boardtype=자연과학"  style="text-decoration: none;">
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-globe fa-2x "></i></div>
                                    <span  style="font-size:  1.5vmin;">자연과학</span>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="w3-col s4 m4 l4">
                        <a href="#" style="text-decoration: none;" disabled>
                            <div class=" w3-border w3-hover-opacity w3-hover-red w3-text-grey">
                                <div class="w3-center w3-round-large w3-padding">
                                    <div><i class="far fa-lightbulb fa-2x"></i></div>
                                    <span style="font-size:  1.5vmin;">팁</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
		
			<button 
				class="w3-bar-item w3-button w3-padding-16" onclick="wrightMenu('${authUser.mbNo }', '전체')"
				style="letter-spacing: 3px;">
				<i class="fas fa-pen"></i> 글쓰기
			</button>


			<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right"
				style="display: none; right: 0;" id="rightMenu">
				<button onclick="closeRightMenu()"
					class="w3-bar-item w3-button w3-large w3-black">Close
					&times;</button>

				<a href="${pageContext.servletContext.contextPath }/"
					class="w3-bar-item w3-button w3-padding-16"
					style="letter-spacing: 3px;">HOME</a>
					 <a class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;" onclick="mypage('${authUser.mbNo }')">PROFILE</a>
					 <a href="#"
					class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;" onclick="myscrap('${authUser.mbNo }')">SAVE</a> 
					<a class="w3-bar-item w3-button w3-padding-16" style="letter-spacing: 3px;" onclick="setting('${authUser.mbNo }')">SETTING</a> 
					<a href="help.html"
					class="w3-bar-item w3-button w3-border-bottom w3-padding-16"
					style="letter-spacing: 3px;">HELP CENTER</a> <input id="authUser"
					type="hidden" value="${authUser.mbNo }">
				<c:choose>
					<c:when test="${empty authUser }">

						<button onclick="loginForm()"
							class="w3-bar-item w3-button w3-padding-16"
							style="letter-spacing: 3px;">LOGIN</button>
						<button onclick="registerForm()"
							class="w3-bar-item w3-button w3-padding-16"
							style="letter-spacing: 3px;">REGISTER</button>

					</c:when>
					<c:otherwise>




						<button
							onclick="location.href='${pageContext.servletContext.contextPath }/user/logout' "
							id="logout" class="w3-bar-item w3-button w3-padding-16"
							style="letter-spacing: 3px;">LOGOUT</button>


					</c:otherwise>
				</c:choose>


			</div>

			<div id="loginForm" class="w3-modal w3-animate-opacity">
				<div class="w3-modal-content w3-card-2 w3-round-large w3-padding-16"
					style="max-width: 420px">
					<header class="w3-container w3-padding-16">
						<span class="w3-large w3-text-grey ">@로그인</span>
					</header>
					<form class="w3-container" action="">
						<input class="w3-input w3-margin-bottom w3-large w3-padding-16"
							type="text" id="email" name="iden" placeholder="mail@mail.com"
							style="letter-spacing: 2px;">
						<div id='emailMsg' class="text-danger"></div>
						<input
							class="w3-input w3-margin-bottom w3-large w3-padding-16 empty"
							type="password" id="pwd" name="pw" placeholder="PASSWORD"
							style="letter-spacing: 2px;">
						<div id="passwdMsg" class="text-danger"></div>

						<div id="loginMsg" class="text-danger"></div>
						<button
							class="w3-button w3-block w3-margin-bottom w3-large w3-text-white w3-round"
							style="background: linear-gradient(141deg, #006600, #009900, #7fc257); letter-spacing: 3px;"
							onclick="login();">LOGIN</button>
					</form>

					<div class="login-devider">
						<span>또는</span>
					</div>

					<footer class="w3-container w3-padding-16">

						<button
							class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
							style="background-color: #3b5998;" id="loginBtn">
							<i class="fab fa-facebook w3-text-white fa-lg w3-left"></i><span
								class="w3-text-white"> Login with Facebook</span>
						</button>

						<div id="naver_id_login"></div>

						<button onclick="goToRegiter()"
							class="w3-button w3-right w3-margin-left w3-round-large"
							style="letter-spacing: 3px;">Register</button>
						<button onclick="closeLogin()"
							class="w3-button w3-left w3-round-large"
							style="letter-spacing: 3px;">Cancel</button>
					</footer>
				</div>
			</div>



			<div id="registerForm" class="w3-modal w3-animate-opacity">
				<div class="w3-modal-content w3-card-2 w3-round-large w3-padding-16"
					style="max-width: 420px;">
					<header class="w3-container w3-padding">
						<span class="w3-large w3-text-grey ">@회원가입</span>
					</header>

					<div class="w3-container">
						<button
							class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
							style="background-color: #3b5998;" id="new-fbloginBtn">
							<i class="fab fa-facebook w3-text-white fa-lg w3-left"></i><span
								class="w3-text-white"> Continue with Facebook</span>
						</button>

						<button id="new-naverLoginBtn"
							class="w3-button w3-block w3-margin-bottom w3-large w3-round w3-margin-top w3-margin-bottom"
							style="background-color: #1EC800;">
							<span id="na-logo" class="naverLogo w3-text-white fa-lg w3-left"></span>
							<span class="w3-text-white">Continue with Naver</span>
						</button>
					</div>


						<div class="login-devider">
							<span>또는</span>
						</div>
					<form class="w3-container" action="#">
						<input class="w3-input w3-margin-bottom w3-large w3-padding-16"
							type="text" id="nickname" name="nknm" placeholder="NAME"
							style="letter-spacing: 2px;">
						<div id="nknmcheck"></div>
						<input class="w3-input w3-margin-bottom w3-large w3-padding-16"
							type="text" id="remail" name="iden" placeholder="EMAIL"
							style="letter-spacing: 2px;">
						<div id="idencheck"></div>
						<input class="w3-input w3-margin-bottom w3-large w3-padding-16"
							type="text" id="rpwd" name="pw" placeholder="PASSWORD"
							style="letter-spacing: 2px;" onfocusout="pwChangeType();"
							onfocus="pwInitType();">
						<div id="pwcheck"></div>
						<div class="gender">
							<label class="genderlabel on-gender" id="M"> <input
								type="radio" name="sex" value="M" id="radiomale" checked
								onclick="changeGenderColor(this);"> 남자
							</label> <label class="genderlabel" id="F"> <input type="radio"
								name="sex" value="F" id="radiofemale"
								onclick="changeGenderColor(this);">여자
							</label>
						</div>
						<div class="birthday">
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
						</div>

						<button
							class="w3-button w3-block w3-margin-bottom w3-large w3-text-white w3-round w3-margin-top w3-margin-bottom"
							style="background: linear-gradient(141deg, #006600, #009900, #7fc257); letter-spacing: 3px;"
							onclick="register();">REGISTER</button>
					</form>
					<footer class="w3-container w3-padding-16">
						<button onclick="goToLogin()"
							class="w3-button w3-right w3-margin-left w3-round-large"
							style="letter-spacing: 3px;">Login</button>
						<button onclick="closeRegister()"
							class="w3-button w3-left w3-round-large"
							style="letter-spacing: 3px;">Cancel</button>
					</footer>
				</div>
			</div>




			<div class="">
				<button class="w3-button w3-bar-item w3-right w3-padding-16"
					onclick="openRightMenu()">
					<i class="fas fa-chevron-down"></i>
				</button>
			</div>
			<button onclick="searchForm()"
				class="w3-bar-item w3-button w3-right w3-padding-16">
				<i class="fas fa-search"></i>
			</button>


			<div id="searchForm" class="w3-modal">
				<div
					class="w3-bar w3-modal-content w3-card-2 w3-round-large w3-padding-16 w3-content"
					style="width: 80%;">
					<form name="searchform"
						action="${pageContext.servletContext.contextPath }/search">
						<div class="w3-content">
							<input type="text" name="text"
								class="w3-bar-item w3-xlarge w3-border-0 w3-padding-16 w3-left"
								placeholder="SEARCH…" style="width: 80%;">
							<button type="submit"
								class="w3-bar-item w3-xlarge w3-orange w3-text-white w3-round-xlarge w3-right w3-margin-right">
								<i class="fas fa-search"></i>
							</button>
						</div>
					</form>
				</div>
			</div>

			<c:import url="/WEB-INF/views/modal/write.jsp" />

		</div>
	</div>
</div>

<div id="selectModal" class="w3-modal w3-animate-opacity">
                    <div class="w3-modal-content w3-card-2 w3-round-large w3-padding-16" style="max-width: 480px">
                        <header class="w3-container w3-padding-16">
                            <span class="w3-large w3-text-grey ">@관심있는 학문을 선택하여 주세요. </span>
                        </header>
                        <form action="#" id="join-form">
                            <div class="w3-container w3-center">
                                <div class='study w3-col s6 l6 interdisciplinary over black w3-text-white  w3-padding-32 lay'>인문학</div>
                                <div class='study w3-col s6 l6 socialscience over black w3-text-white  w3-padding-32'>사회과학</div>
                                <div class='study w3-col s6 l6 naturalscience over black w3-text-white  w3-padding-32'>자연과학</div>
                                <div class='study w3-col s6 l6 engineering over black w3-text-white  w3-padding-32'>공학</div>
                                <div class='study w3-col s6 l6 medicine over black w3-text-white  w3-padding-32'>의약학</div>
                                <div class='study w3-col s6 l6 ocean over black w3-text-white  w3-padding-32'>농수해양학</div>
                                <div class='study w3-col s6 l6 art over black w3-text-white  w3-padding-32'>예술체육학</div>
                                <div class='study w3-col s6 l6 interdisciplinary over black w3-text-white  w3-padding-32'>복합학</div>
                            </div>

                            <button id='studySubmit' type="submit" style="margin-bottom: 10px"
                                    class="btn formbtn disabled w3-button w3-margin-left">선택완료</button>
                            <br>
                        </form>

                    </div>

</div>



<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>




<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/login.js"></script>



<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/counseling.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/signup.js"></script>





