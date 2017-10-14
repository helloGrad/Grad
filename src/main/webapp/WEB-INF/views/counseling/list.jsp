<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<title>하이그래드넷</title>
    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>   
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>
	        
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontello-embedded.css">
<link href="${pageContext.request.contextPath}/resources/css/counseling.css" rel="stylesheet">
    
<style>
body {
   padding-top: 7em;
 }	


 .pagelist {
   margin : 5%;
   text-align: center;
}

.selectbtn {
   background-color: #ff0000;
}

a.btn.disabled.numbtn {
   background-color: #D9534F;
   color : #ffffff;
}

.scrap-on {
	color: #FF0000;
}

</style>


<script>

var authUser = '${authUser.mbNo }';
var ttype= '${ttype }';

	$(function() {
		
		
		disfetchList("전체", "최신순", ttype, function() {

	
			if(authUser == null || authUser == "" ){
				
			
			}else{
				
				var scrapList=JSON.parse('${scrapList}');
				for(var i=0;i<scrapList.length;i++){

					if(scrapList[i].prntsDstnct==='게시글'){
						
						
						$('.do-scrapcoun' + scrapList[i].prntsNo).addClass('scrap-on');
					}
				};	
				
			}
		});
		
		$(window).scroll(function() {
			var $window = $(this);
			var scrollTop = $window.scrollTop();
			var windowHeight = $window.height();
			var documentHeight = $(document).height();
			if (scrollTop + windowHeight + 10 > documentHeight) {
				if (!disbFetching) {
					disbFetching = true;
					disfetchList("전체", "최신순", ttype, function() {
						

				
						if(authUser == null || authUser == "" ){
							
						
						}else{
							
							var scrapList=JSON.parse('${scrapList}');
							for(var i=0;i<scrapList.length;i++){

								if(scrapList[i].prntsDstnct==='게시글'){ 
									
									
									$('.do-scrapcoun' + scrapList[i].prntsNo).addClass('scrap-on');
								}
							};	
							
						}
					});
				}
			}
			

		});
		
		
	});
</script>

<body>
<c:import url="/WEB-INF/views/include/header.jsp" />

<div class="container">
   
   
   	<div class="w3-row">
        <div class="w3-panel w3-border-bottom w3-border-black">
            <h1>
                <div style="float: left; margin-right: 0.3em;">All</div>

            </h1>
        </div>
   	
 
 		     <div class="w3-row-padding">
             <div class="w3-col s12 m6 l3  w3-white w3-round-large main-banner">
                <h5 class="w3-center w3-padding" style="letter-spacing: 0.3em;"><strong>Activity</strong></h5>
                <ul class="w3-ul w3-center w3-text-grey w3-padding" style="letter-spacing: 0.1em;">
                    <li class=""><a href="${pageContext.servletContext.contextPath }/counseling/list?ttype=A"> All <span class=""></span></a></li>
                    <li class=""><a href="${pageContext.servletContext.contextPath }/counseling/list?ttype=W"> 답변을 기다리는 중 <span class=""></span></a></li>
                   
                </ul>
            </div>


	    <div class="w3-col s12 m4 l7 w3-margin-bottom ">
            
               <div id="myBtn" class="btn btn-danger web-volunteer writeBtn w3-margin-bottom">질문하기</div>
            
            <div class="dropdown option">
                <button class="w3-button w3-padding w3-padding w3-round-large" type="button" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-option-horizontal"></i>
                </button>
                <ul class="dropdown-menu dropdown-menu-right">
                     <li><a href="javascript:void(0);" onclick="reset('전체','조회순');">조회순</a></li>
                     <li><a href="javascript:void(0);" onclick="reset('전체','공감순');">공감순</a></li>
                     <li><a href="javascript:void(0);" onclick="reset('전체','최신순');">최신순</a></li>
                </ul>
            </div>
            
            <input type="hidden" id="authUser" name="authUser" value="${authUser.mbNo }">
	
            <div id="list"></div>
            <div id="pagelist" class="pagelist"></div>
                
 
                
     
            </div>



    </div>
</div>




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/doscrap.js"></script>	
</body>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	
</html>