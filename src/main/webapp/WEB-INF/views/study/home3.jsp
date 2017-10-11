<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	


<style>
    

body {
	padding-top: 5em;
}
.grad-banner {
	box-shadow: 5px 10px 10px rgba(102, 102, 255, 0.3), -1px -1px 10px rgba(136, 176, 75, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}
.grad-banner:hover {
	box-shadow: 5px 10px 30px rgba(102, 102, 255, 0.5), -1px -1px 30px rgba(136, 176, 75, 0.5);
	margin-bottom: 1.5em;
}
.lab-banner {
	box-shadow: 5px 10px 10px rgba(51, 102, 255, 0.3), -1px -1px 10px rgba(75, 0, 130, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}
.lab-banner:hover {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px rgba(75, 0, 130, 0.5);
	margin-bottom: 1.5em;
}
.conference-banner {
	box-shadow: 5px 10px 10px rgba(51, 102, 255, 0.3), -1px -1px 10px rgba(153, 0, 153, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}
.conference-banner:hover {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px rgba(153, 0, 153, 0.5);
	margin-bottom: 1.5em;
	background-color: white;
}
.qna-banner {
	box-shadow: 5px 10px 10px rgba(0, 0, 51, 0.3), -1px -1px 10px rgba(0, 0, 51, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}
.qna-banner:hover {
	box-shadow: 5px 10px 30px rgba(0, 0, 51, 0.5), -1px -1px 30px rgba(0, 0, 51, 0.5);
	margin-bottom: 1.5em;
}
.content-answers {
	height: 3.5em;
	text-overflow:ellipsis;
	overflow: hidden;
	white-space: normal;
}
.grad-banner-our {
	box-shadow: 5px 10px 10px rgba(0, 0, 0, 0.15), -1px -1px 10px rgba(0, 0, 0, 0.15);
	margin-bottom: 1.5em;
	background-color: white;
}
.scrap-on {
	color: #FF0000;
}
</style>

<script type="text/javascript">
$(function() {
	
	
	var authUser = $("#authUser").val();
	
	var click_id;
	
	
	if(authUser == null || authUser == "" ){
		
		
	}else{
		
		
		var scrapList=JSON.parse('${scrapList}');
		for(var i=0;i<scrapList.length;i++){

			if(scrapList[i].prntsDstnct==='게시글'){ 
				
				
				$('.do-scrapcoun' + scrapList[i].prntsNo).addClass('scrap-on');
			}
			else if(scrapList[i].prntsDstnct==='모집공고'){
				
				
				$('.do-scrapnoti' + scrapList[i].prntsNo).addClass('scrap-on');
			}
		};	
		
	}
	
	
	$(document).on('click', ".counseling", function(event) { 
		
		
		click_id = $(this).attr('value');

	
		if (authUser === null || authUser === '') {
			
			$("#login").css({
				"display" : "block"
			});

		}else{
			
			location.href="/net/counseling/detail?no="+click_id+"&type=prnts";
			
		}      
	
	
	});
	
	
	
	$(document).on('click', ".counselingreply", function() { 
		
		
		click_id = $(this).attr('value');

		
		if (authUser === null || authUser === '') {
			
			$("#login").css({
				"display" : "block"
			});

		}else{
			
			
			location.href="/net/counseling/detail?no="+click_id+"&type=reply";
			 event.stoplmmediatePropagation();
		}      
	
	
	});
	
	
});


</script>


</head>
<body>


	<c:import url="/WEB-INF/views/include/header.jsp" />
	<c:import url="/WEB-INF/views/include/subHeader.jsp" />


	<!--sub navigation-->
<div class="w3-panel">
    <h1 class="w3-center" style="letter-spacing: 5px;">USER's PROFILE</h1>

    <div class="container">

        <div class="w3-row">
            <div class="w3-row-padding w3-container">
                <div class="w3-col s12 m12 l12  w3-white w3-round-large main-banner">
                    <div class="w3-col s12 m4 l4">
                        <h5 class="w3-center w3-padding " style="letter-spacing: 0.3em;"><strong>I am</strong></h5>
                        <p><i class="fas fa-graduation-cap fa-fw w3-margin-right w3-text-theme"></i>공학  공학일반, 기타 </p>
                        <p><i class="fas fa-home fa-fw w3-margin-right w3-text-theme"></i> 연구실,교육/모임 </p>
                        <p><i class="fas fa-map-marker-alt fa-fw w3-margin-right w3-text-theme"></i> 전국 </p>
                    </div>
                    <div class="w3-col s12 m4 l4">
                        <h5 class="w3-center w3-padding" style="letter-spacing: 0.3em;"><strong>Activity</strong></h5>
                        <p><i class="fas fa-pencil fa-fw w3-margin-right w3-text-theme"></i> 작성 내역</p>
                        <p><i class="fas fa-reply fa-fw w3-margin-right w3-text-theme"></i> 답변 내역</p>
                        <p><i class="fas fa-thumbtack fa-fw w3-margin-right w3-text-theme"></i> 스크랩</p>
                    </div>
                    <div class="w3-col s12 m4 l4 w3-center">
                        <h5 class="w3-center w3-padding" style="letter-spacing: 0.3em;"><strong>Setting</strong></h5>
                            <p><a href="../setting.html"> TASKS </a></p>
                            <p><a href="../setting.html"> EDIT </a><p>

                    </div>
                </div>

                <div class="w3-col s12 m6 l9 w3-white w3-round-large main-banner">

                </div>
            </div>
        </div>

        <div class="w3-row">
            <div class="w3-bar w3-round-large">
                <button class="w3-bar-item w3-button w3-margin-left w3-large w3-text-blue"><i class="fas fa-newspaper"></i>
                    TODAY
                </button>
                <button class="w3-bar-item w3-button w3-large"><i class="fas fa-users w3-text-grey"></i> RECRUIT</button>
                <button class="w3-bar-item w3-button w3-large"><i class="fas fa-clipboard w3-text-grey"></i> TALK </button>
            </div>
        </div>

        <div class="w3-row">
            <div class="w3-panel w3-border-bottom w3-border-black">
                <h1>
                    <div style="float: left; margin-right: 0.3em; line-height: 90%;">27</div>
                    <small>
                        <div style="float: left; font-size: small; line-height: 130%;">수요일<br>2017년 9월</div>
                    </small>
                </h1>
            </div>
            <div class="w3-row-padding">
                <!--lane 1-->
                <div class="w3-col s12 m6 l4">
                    <!--일상 게시글 (사진 있음)-->
                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <span class="w3-lobster">Category - Ordinary - with Image</span>
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-display-container">
                            <img src="http://cfile239.uf.daum.net/image/2318A834560919B9295343" alt="고려대학교"
                                 style="width:100%;">
                            <!--제목-->
                            <div class="w3-large w3-display-bottomleft w3-padding w3-text-white w3-round-large"
                                 style="background-color: rgba(0,0,0,0.5);">#포메라니안</div>
                            <div class="w3-padding w3-display-topleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large">
                                <i class="fa fa-heart w3-text-red w3-large"></i>
                            </div>
                        </div>
                        <div class="w3-container w3-margin-top">
                            <!--코멘트 수-->
                            <span class="w3-small w3-padding">Comment <span class="w3-badge w3-light-gray">1</span></span>
                            <!--코멘트(베스트)-->
                            <p class="board-answer w3-round-large w3-padding w3-medium" style="margin-top: 0.5em;">포메라니안 </p>
                        </div>
                    </div>

                    <!--질문 글-->
                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <span class="w3-lobster">Category - Question - no Image</span>
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-center">
                            <h5 style="margin-bottom: 0em;"><strong>저희 냥이가 자꾸 노상방뇨를 합니다</strong></h5>
                        </div>
                        <div class="w3-container" style="margin-bottom: -1em;">
                            <div class="w3-container w3-margin-top">
                                <p class="w3-medium"
                                   style="margin-top: 0em; line-height: 200%; max-height: 10em;  text-overflow:ellipsis;overflow: hidden;">
                                    요세 저희집 냥이가 자꾸 오줌(똥도가끔..)을 다른곳에 쌉니다 ㅠ 그것도 하필 침대에만!!! ㅠㅠ

                                    화장실에 문제가 있는것 같은데 어떤식으로 해야할지 모르겠어요 ㅠㅠ
                                    필렛 모래형을 쓰고 똥은 보이는 즉시 처리하고, 오줌먹어 가루된 모래는 하루에 한번 갈아줍니다.
                                    (태어나서부터 필렛만 썻어영)

                                    필렛을 적게 채워있으면 밑 가루받이에 오줌이 그대로 내려오고, 많이 채우면 가루분리가 힘들더라구요.. ㅠㅠ

                                    크면서 민감해지는지 완전 8개월 전까진 한번도 안그러더니 최근 냄새나는걸 많이 싫어하네요 ㅋ ㅠ 제잘못이라 생각하고 바꾸고싶은데 뭘 어떻게 해야할지
                                    모르겠습니다 </p>
                                <span class="w3-medium w3-left w3-margin-bottom w3-text-blue"
                                      style="font-size: 1.8vmin; margin-top: -1.5em;">(read more)</span>
                            </div>
                        </div>
                        <div class="w3-container w3-margin-top">
                            <span class="w3-small w3-padding">Answers <span class="w3-badge w3-light-gray">7</span></span>
                            <p class="board-answer w3-round-large w3-padding w3-medium" style="margin-top: 0.5em;">포메라니안</p>
                        </div>
                    </div>

                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <span class="w3-lobster">Category - Ordinary - no Image</span>
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-container" style="margin-bottom: -1em;">
                            <div class="w3-center">
                                <h5 style="margin-bottom: 0em;"><strong>출석출석~</strong></h5>
                            </div>
                            <div class="w3-container w3-margin-top">
                                <p class=""
                                   style="font-size: 1.8vmin; margin-top: 0em; line-height: 200%; max-height: 10em;  text-overflow:ellipsis;overflow: hidden;">
                                    출석이요~
                                </p>
                            </div>
                        </div>
                        <div class="w3-container w3-margin-top">
                            <span class="w3-small w3-padding">Comments <span class="w3-badge w3-light-gray">1</span></span>
                            <p class="board-answer w3-round-large w3-padding w3-medium" style="margin-top: 0.5em;  line-height: 200%; max-height: 5em;  text-overflow:ellipsis;overflow: hidden;">
                                댓글 테스트 댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트 댓글 테스트 댓글 테스트 댓글 테스트 댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트댓글 테스트
                            </p>
                        </div>
                    </div>

                </div>

                <!--lane 2-->
                <div class="w3-col s12 m6 l4">
                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <!--카테고리-->
                            <span class="w3-lobster">Category - Ordinary - with Image</span>
                            <!--정보 더보기-->
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-display-container">
                            <img src="http://image.ytn.co.kr/general/jpg/2016/0905/201609050940070825_d.jpg" alt="고려대학교"
                                 style="width:100%;">
                            <div class="w3-large w3-display-bottomleft w3-padding w3-text-white w3-round-large"
                                 style="background-color: rgba(0,0,0,0.5);">#고슴도치</div>
                            <div class="w3-padding w3-display-topleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large">
                                <i class="fa fa-heart w3-text-red w3-large"></i>
                            </div>
                        </div>
                        <div class="w3-container w3-margin-top">
                            <span class="w3-small w3-padding">Comment <span class="w3-badge w3-light-gray">1</span></span>
                            <p class="board-answer w3-round-large w3-padding w3-medium" style="margin-top: 0.5em;">하이 </p>
                        </div>
                    </div>

                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <span class="w3-lobster">Category - AD - with Image</span>
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-display-container">
                            <img src="http://t4a.coupangcdn.com/thumbnails/remote/q89/image/product/content/product/2017/02/02/6982004/51b18404-77ec-4e68-820a-9c8342658784.jpg"
                                 alt="고려대학교"
                                 style="width:100%;">
                            <div class="w3-display-hover w3-animate-opacity">
                                <div class="w3-padding w3-display-topleft  w3-margin-left w3-margin-top w3-white w3-round-large" style="z-index: 2;">
                                    <i class="fa fa-heart w3-text-red w3-large"></i>
                                </div>
                                <div class="w3-padding w3-display-topright w3-margin-right w3-margin-top w3-white w3-round-large" style="z-index: 2;">
                                    <i class="fa fa-shopping-cart w3-large"></i>
                                </div>
                                <div class="w3-large w3-display-middle w3-padding w3-text-white w3-left-align"
                                     style="background-color: rgba(0,0,0,0.85); width: 100%; height: 100%; z-index: 1;">
                                    <span class="w3-margin-left w3-margin-bottom w3-display-bottomleft">#Reese's Puff</span>
                                </div>
                            </div>
                            <div class="w3-container w3-margin-top">
                            </div>
                        </div>
                    </div>

                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <span class="w3-lobster">Category - Meeting -with Image</span>
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-display-container">
                            <img class="meeting-title" src="https://onoffmix.com/images/event/81439/s" style="width:100%;">
                            <div class="w3-large w3-display-topleft w3-padding w3-text-white w3-round-large"
                                 style="background-color: rgba(0,0,0,0.6);">서울</div>
                        </div>
                        <div class="w3-container w3-margin-top ">
                            <a class="bar-deco" href="meeting.html">
                                <button class="w3-button w3-block w3-border w3-white w3-round-large w3-margin-bottom w3-large"
                                        style="letter-spacing: 2px;">참석하기
                                </button>
                            </a>
                        </div>
                    </div>
                </div>

                <!--lane 3-->
                <div class="w3-col s12 m6 l4">
                    <!--일상 게시글 (사진 없음)-->
                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <!--카테고리-->
                            <span class="w3-lobster">Category - Ordinary - no Image</span>
                            <!--정보 더보기-->
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-container" style="margin-bottom: -1em;">
                            <div class="w3-center">
                                <h5 style="margin-bottom: 0em;"><strong>냥줍 아깽이 근황</strong></h5>
                            </div>
                            <div class="w3-container w3-margin-top">
                                <p class="w3-medium"
                                   style="margin-top: 0em; line-height: 200%; max-height: 10em;  text-overflow:ellipsis;overflow: hidden;">
                                    냥줍3일차입니다
                                    병원동생이 데리고 출퇴근하고 있어요 ㄷㄷㄷ
                                    3시간에 한번씩 분유준다고 목표는 잡아놨는데...
                                    그냥 삐약거리면 시도때도 없이 저랑 동생이랑 번갈아가며 젖병 물려주고있어요
                                    배변유도해주면 쉬야도 퐁퐁 잘하고~
                                </p>
                            </div>
                        </div>
                        <div class="w3-container w3-margin-top">
                            <span class="w3-small w3-padding">Comments <span class="w3-badge w3-light-gray">2</span></span>
                            <p class="board-answer w3-round-large w3-padding w3-medium" style="margin-top: 0.5em;">굳굳 </p>
                        </div>
                    </div>

                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <!--질문 글 (사진 있음)-->
                        <div class="w3-card w3-round-large w3-white w3-margin-bottom main-banner">
                            <div class="w3-padding w3-text-grey w3-small">
                                <!--카테고리-->
                                <span class="w3-lobster">Category - Question - with Image</span>
                                <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                            </div>
                            <div class="w3-display-container">
                                <img src="http://media1.santabanta.com/full1/Animals/Horses/horses-49a.jpg" alt="고려대학교"
                                     style="width:100%;">
                                <!--제목-->
                                <div class="w3-large w3-display-bottomleft w3-padding w3-text-white w3-round-large"
                                     style="background-color: rgba(0,0,0,0.5);">#밝은 배경 테스트 </div>
                                <div class="w3-padding w3-display-topleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large">
                                    <i class="fa fa-heart w3-text-red w3-large"></i>
                                </div>
                            </div>
                            <div class="w3-container" style="margin-bottom: -1em;">
                                <div class="w3-container w3-margin-top">
                                    <p class=""
                                       style="font-size: 1.8vmin; margin-top: 0em; line-height: 200%; max-height: 10em;  text-overflow:ellipsis;overflow: hidden;">
                                        밝은 배경 테스트 밝은 배경 테스트 밝은 배경 테스트
                                    </p>
                                </div>
                            </div>
                            <div class="w3-container w3-margin-top">
                            <span class="w3-small w3-padding">Answers <span
                                    class="w3-badge w3-light-gray">2</span></span>
                                <p class="board-answer w3-round-large w3-padding w3-medium" style="margin-top: 0.5em;">
                                    말말말 </p>
                            </div>
                        </div>
                    </div>

                    <div class="w3-card w3-round-large w3-margin-bottom main-banner w3-white">
                        <div class="w3-padding w3-text-grey w3-small">
                            <span class="w3-lobster">Category - AD - with Image</span>
                            <span class="w3-right"><i class="fas fa-ellipsis-h"></i></span>
                        </div>
                        <div class="w3-display-container">
                            <img class="ad-title" src="http://t2a.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/2017/01/11/14/8/599d10c9-b426-4742-bc40-d24851c8eac1.jpg"
                                 alt="개간식" style="width:100%;">
                            <div class="w3-display-hover w3-animate-opacity">
                                <div class="w3-padding w3-display-topleft  w3-margin-left w3-margin-top w3-white w3-round-large" style="z-index: 2;">
                                    <i class="fa fa-heart w3-text-red w3-large"></i>
                                </div>
                                <div class="w3-padding w3-display-topright w3-margin-right w3-margin-top w3-white w3-round-large" style="z-index: 2;">
                                    <i class="fa fa-shopping-cart w3-large"></i>
                                </div>
                                <div class="w3-large w3-display-middle w3-padding w3-text-white w3-left-align"
                                     style="background-color: rgba(0,0,0,0.85); width: 100%; height: 100%; z-index: 1;">
                                    <span class="w3-margin-left w3-margin-bottom w3-display-bottomleft">#양치하개</span>
                                </div>
                            </div>
                            <div class="w3-container w3-margin-top">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>






	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/study.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/doscrap.js"></script>	
	
</body>
</html>