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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ejs/ejs.js"></script>



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w31.css">	
<link href="${pageContext.request.contextPath}/resources/css/study.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/counseling.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/counseling.js"></script>	
<style>

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

.distinct-line {
			padding-top: 2.5em;
}
		

</style>
 
<script>

var order;
var authUser = '${authUser.mbNo }';
var ttype= '${ttype }';
      
$(function() {
		

		if(order == undefined){
			
			order="최신순";	
		}
		
		console.log(order);
		
		
		disfetchList(boardtype, order, ttype, function() {
			
	
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
				
					disfetchList(boardtype, order,ttype, function() {
						

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
</head>
<body>

<c:import url="/WEB-INF/views/include/header.jsp" />
<c:import url="/WEB-INF/views/include/subHeader.jsp" />


<div class="container">
    <div class="w3-row">
       
        
       
            
            
        <div class="w3-row-padding">
            <div class="w3-col s12 m12 l3  w3-white w3-round-large main-banner">
                <h5 class="w3-center w3-padding" style="letter-spacing: 0.3em;"><strong>Activity</strong></h5>
                <ul class="w3-ul w3-center w3-text-grey w3-padding" style="letter-spacing: 0.1em;">
                    <li class=""><a href="${pageContext.servletContext.contextPath }/study/discussion?boardtype=${boardtype}&ttype=A"> All <span class=""></span></a></li>
                    <li class=""><a href="${pageContext.servletContext.contextPath }/study/discussion?boardtype=${boardtype}&ttype=C"> 상담실 <span class=""></span></a></li>
                    <li class=""><a href="${pageContext.servletContext.contextPath }/study/discussion?boardtype=${boardtype}&ttype=W"> 답변을 기다리는 중 <span class=""></span></a></li>
                    <li class=""><a href="${pageContext.servletContext.contextPath }/study/discussion?boardtype=${boardtype}&ttype=N"> 일반게시판 <span class=""></span></a></li>
                </ul>
            </div>

            <div class="w3-col s12 m12 l7 w3-margin-bottom ">
            
               <div class="btn btn-danger web-volunteer w3-margin-bottom w3-margin-top" onclick="wrightMenu('${authUser.mbNo }', '${boardtype}')">질문하기</div>
            
            <div class="dropdown option w3-margin-bottom w3-margin-top">
                <button class="w3-button w3-padding w3-padding w3-round-large" type="button" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-option-horizontal"></i>
                </button>
                <ul class="dropdown-menu dropdown-menu-right">
                     <li><a href="javascript:void(0);" onclick="reset('${boardtype}','조회순');">조회순</a></li>
                     <li><a href="javascript:void(0);" onclick="reset('${boardtype}','공감순');">공감순</a></li>
                     <li><a href="javascript:void(0);" onclick="reset('${boardtype}','최신순');">최신순</a></li>
                </ul>
            </div>
            
            <input type="hidden" id="authUser" name="authUser" value="${authUser.mbNo }">
	
            <div id="list"></div>
            <div id="pagelist" class="pagelist"></div>
                
 
                
     
            </div>
        </div>


    </div>



</div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/doscrap.js"></script>	

</body>
  
</html>