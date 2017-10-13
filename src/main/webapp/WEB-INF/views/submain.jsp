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


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>



<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/css/login.css"
	rel="stylesheet">

<style>
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

.grad-banner {
	box-shadow: 5px 10px 30px rgba(102, 102, 255, 0.2), -1px -1px 30px
		rgba(255, 102, 0, 0.15);
	margin-bottom: 1.5em;
	background-color: white;
}

.grad-banner:hover {
	box-shadow: 5px 10px 30px rgba(102, 102, 255, 0.5), -1px -1px 30px
		rgba(255, 102, 0, 0.5);
	margin-bottom: 1.5em;
}

.lab-banner {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.2), -1px -1px 30px
		rgba(102, 255, 51, 0.1);
	margin-bottom: 1.5em;
	background-color: white;
}

.lab-banner:hover {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px
		rgba(102, 255, 51, 0.5);
	margin-bottom: 1.5em;
}

.conference-banner {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.2), -1px -1px 30px
		rgba(153, 0, 153, 0.2);
	margin-bottom: 1.5em;
	background-color: white;
}

.conference-banner:hover {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px
		rgba(153, 0, 153, 0.5);
	margin-bottom: 1.5em;
	background-color: white;
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
</style>


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
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />


	<div class="w3-center"
		style="padding-top: 70px; padding-bottom: 30px; margin-bottom: 30px; height: 15em; background: linear-gradient(131deg, rgba(153, 0, 0, 0.65), rgba(0, 0, 153, 0.65), rgba(0, 153, 0, 0.65));">
		<div class="w3-content">
			<div class="w3-xxxlarge w3-text-white"
				style="letter-spacing: 3px; text-shadow: 1px 1px 0 #444">HIGRAD
				NET</div>
			<div class="w3-border-top w3-border-white w3-medium w3-text-white"
				style="text-shadow: 1px 1px 0 #444">resources to help you
				entering grad School</div>
		</div>
	</div>
	<div class="container">
		<div class="w3-col s12 m12 l12">
			<div class="w3-row w3-row-padding">
				<div class="w3-col s12 m3 l3  w3-margin-bottom">
					<div class="w3-card w3-white setting">
						<header class="w3-container w3-center w3-text-white"
							style="background: rgb(11, 194, 132)">
							<h6>CUSTOMIZATION</h6>
						</header>
						<div class="w3-container w3-padding w3-row-padding">
							<div class="w3-left w3-margin-right">
								<i class="far fa-user-circle fa-3x"></i>
							</div>
							<span class="w3-content w3-small"> Know your industry. It
								is important what professionals in your chosen career. </span>
						</div>
						<footer class="w3-container w3-border-top">
							<div class="w3-padding w3-medium w3-center">설정 바로가기</div>
						</footer>
					</div>
				</div>
				<div class="w3-col s12 m3 l3  w3-margin-bottom">
					<div class="w3-card w3-white "
						onclick="location.href='${pageContext.servletContext.contextPath }/counseling/list?ttype=A'">
						<header class="w3-container w3-center  w3-text-white"
							style="background: rgb(11, 194, 132)">
							<h6>COUNSELING</h6>
						</header>
						<div class="w3-container w3-padding w3-row-padding">
							<div class="w3-left w3-margin-right">
								<i class="far fa-code-merge fa-3x"></i>
							</div>
							<Span class="w3-content w3-small">Allow enough time before
								you apply grad-school and Know your industry.</Span>
						</div>
						<footer class="w3-container w3-border-top">
							<div class="w3-padding w3-medium w3-center">상담실 바로가기</div>
						</footer>
					</div>
				</div>
				<div class="w3-col s12 m3 l3  w3-margin-bottom">
					<div class="w3-card w3-white">
						<header class="w3-container w3-center  w3-text-white"
							style="background: rgb(11, 194, 132)">
							<h6>CHOOSE</h6>
						</header>
						<div class="w3-container w3-padding w3-row-padding">
							<div class="w3-left w3-margin-right">
								<i class="far fa-university fa-3x "></i>
							</div>
							<Span class="w3-content w3-small">Start out with a with at
								least 5 schools of options on your grad school.</span>
						</div>
						<footer class="w3-container w3-border-top">
							<div class="w3-padding w3-medium w3-center">${notiCount }건
								진행 중</div>
						</footer>
					</div>
				</div>

				<div class="w3-col s12 m3 l3  w3-margin-bottom">
					<div class="w3-card w3-white"
						onclick="location.href='${pageContext.request.contextPath}/user/mypage?type=myscrap'">
						<header class="w3-container w3-center  w3-text-white"
							style="background: rgb(11, 194, 132)">
							<h6>COMPARE</h6>
						</header>
						<div class="w3-container w3-padding w3-row-padding">
							<div class="w3-left w3-margin-right">
								<i class="far fa-list fa-3x "></i>
							</div>
							<span class="w3-content w3-small">Make spreadsheet. this
								is important to you in considering what programs are best.</span>
						</div>
						<footer class="w3-container w3-border-top">

							<c:choose>
								<c:when test="${empty authUser }">


									<div class="w3-padding w3-medium w3-center mainscrap">0
										스크랩</div>
								</c:when>
								<c:otherwise>


									<div class="w3-padding w3-medium w3-center mainscrap">${scrapCount}
										스크랩</div>



								</c:otherwise>
							</c:choose>

						</footer>
					</div>
				</div>
			</div>
		</div>

	</div>


	<div class="container">
		<div class="col-xs-12 col-sm-12 col-lg-12">

			<c:if test="${authUser.mbNo != null  }">



				<div class="row distinct-line">
					<div class="col-xs-12 col-sm-12 col-lg-12">
						<h3>
							<a class="major-titles"> You might interest </a>
						</h3>

						<hr>
					</div>

					<div class="row distinct-line">
						<c:forEach items="${myBoardList }" var="myBoardList"
							varStatus="status">
							<c:if
								test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn == 'Y' }">

								<div class="w3-col s12 m6 l3 w3-row-padding w3-margin-bottom">
									<div
										class="w3-display-container w3-card w3-round-large w3-white">
										<div class="noti-card"
											onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
											<div class="w3-padding w3-text-grey w3-small"
												style="margin-bottom: -1.5em;">${myBoardList.year }년
												${myBoardList.slctnSemstr}</div>
											<div style="margin-bottom: 0em;">
												<img src="${myBoardList.storgPath }" alt="대학교 로고"
													style="width: 100%; padding: 1em 1em 0 1em; height: 83px;">

											</div>
											<div class="w3-container w3-center">
												<h4 style="height: 2em;">
													<strong>${myBoardList.lab }</strong>
												</h4>
												<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
											</div>

											<div class="w3-container">
												<div class="w3-light-grey w3-tiny">
													<c:if test="${myBoardList.percent<=0 }">
														<div class="w3-container" style="width: 0%; height: 2px;"></div>
													</c:if>
													<c:if test="${myBoardList.percent>0 }">
														<div class="w3-container w3-black"
															style="width: ${myBoardList.percent }%; height: 2px;"></div>
													</c:if>
												</div>
											</div>
										</div>
										<div class="w3-row-padding w3-padding">
											<div
												class="doScrap w3-padding w3-display-bottomleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large do-scrapnoti${myBoardList.slctnNotiNo }">
												<i class="far fa-thumbtack w3-large"
													onclick="doScrap('모집공고',${myBoardList.slctnNotiNo },'',${authUser.mbNo });"></i>
											</div>
											<span
												class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
												style="float: right;"> <c:choose>
													<c:when test="${myBoardList.slctnYycl=='9999' }">
														<div class="noti-endtext">상시모집</div>
													</c:when>
													<c:when
														test="${myBoardList.dday > 0 && myBoardList.dday > myBoardList.totaldays}">
														<div class="noti-endtext">모집예정</div>
													</c:when>
													<c:when
														test="${myBoardList.dday > 0 && myBoardList.dday <= myBoardList.totaldays}">
														<div class="noti-endtext">D-${labVo.dday}</div>
													</c:when>
													<c:when test="${myBoardList.dday == 0 }">
														<div class="noti-endtext">오늘마감</div>
													</c:when>
													<c:when test="${myBoardList.dday < 0 }">
														<div class="noti-endtext">모집마감</div>
													</c:when>
												</c:choose>
											</span>
										</div>

									</div>
								</div>

							</c:if>
						</c:forEach>
					</div>
				</div>

			</c:if>



		</div>

		<div class="row distinct-line">
			<c:forEach items="${myBoardList }" var="myBoardList"
				varStatus="status">
				<c:if
					test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn == 'Y' }">


					<div class="w3-col s12 m6 l3 w3-row-padding w3-margin-bottom">
						<div class="w3-display-container w3-card w3-round-large w3-white">
							<div class="noti-card"
								onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
								<div class="w3-padding w3-text-grey w3-small"
									style="margin-bottom: -1.5em;">
									<c:choose>
										<c:when test="${myBoardList.bk21EorgnzSuprtYn == 'Y' }">
											<span class="w3-red"
												style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
											<span class="w3-blue"
												style="padding-right: 5px; padding-left: 0px;">21+</span>
										</c:when>
										<c:otherwise>
											<span
												style="padding-right: 2px; padding-left: 10px; margin-right: -5px"></span>
											<span style="padding-right: 5px; padding-left: 0px;"></span>
										</c:otherwise>
									</c:choose>
								</div>
								<div style="margin-bottom: 0em;">
									<img src="${myBoardList.storgPath }" alt="대학교 로고"
										style="width: 100%; padding: 1em 1em 0 1em; height: 83px;">

								</div>
								<div class="w3-container w3-center">
									<h4>
										<strong>${myBoardList.graduate }</strong>
									</h4>
									<h4 style="height: 2em;">
										<strong>${myBoardList.lab }</strong>
									</h4>
									<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
								</div>

								<div class="research-field w3-padding text-center">
									<c:forEach items="${myBoardList.researchList }" var="resList"
										varStatus="status">
										<span class="w3-tag w3-light-grey w3-tiny ">${resList.cdNm }</span>
									</c:forEach>
								</div>
							</div>
							<div class="w3-row-padding w3-padding">
								<div
									class="doScrap w3-padding w3-display-bottomleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large do-scrapnoti${myBoardList.slctnNotiNo }">
									<i class="far fa-thumbtack w3-large"
										onclick="doScrap('모집공고',${myBoardList.slctnNotiNo },'',${authUser.mbNo });"></i>
								</div>


								<span
									class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
									style="float: right;"><c:choose>
										<c:when test="${myBoardList.slctnYycl=='9999' }">
											<div class="noti-endtext">상시모집</div>
										</c:when>
										<c:when
											test="${myBoardList.dday > 0 && myBoardList.dday > myBoardList.totaldays}">
											<div class="noti-endtext">모집예정</div>
										</c:when>
										<c:when
											test="${myBoardList.dday > 0 && myBoardList.dday <= myBoardList.totaldays}">
											<div class="noti-endtext">D-${labVo.dday}</div>
										</c:when>
										<c:when test="${myBoardList.dday == 0 }">
											<div class="noti-endtext">오늘마감</div>
										</c:when>
										<c:when test="${myBoardList.dday < 0 }">
											<div class="noti-endtext">모집마감</div>
										</c:when>
									</c:choose></span>

							</div>

						</div>
					</div>


				</c:if>
			</c:forEach>
		</div>





		<c:forEach items="${codeList }" var="codeVo" varStatus="status">
			<div class="row distinct-line">
				<div class="col-xs-12 col-sm-12 col-lg-12">
					<h3>
						<a
							href="${pageContext.servletContext.contextPath }/study/main?boardtype=${codeVo.cdNm }"
							name="${codeVo.engCodeNm }" style="padding-top: 3em;">${codeVo.cdNm }
							<small class="w3-text-grery">대학원 ${codeVo.gradIngCount }건
								연구실 ${codeVo.labIngCount }건</small>
						</a>
					</h3>

					<hr>

					<div class="row">
						<c:forEach items="${gradList }" var="gradVo" varStatus="status">
							<c:choose>
								<c:when test="${gradVo.pNm == codeVo.cdNm}">


									<div class="w3-col s12 m6 l3 w3-row-padding w3-margin-bottom">
										<div
											class="w3-display-container w3-card w3-round-large w3-white">
											<div class="noti-card"
												onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${gradVo.slctnNotiNo}&tabnm=${gradVo.slctnNotiDstnct}'">
												<div class="w3-padding w3-text-grey w3-small"
													style="margin-bottom: -1.5em;">${gradVo.slctnYycl }년
													${gradVo.slctnSemstr }</div>
												<div style="margin-bottom: 0em;">
													<img src="${gradVo.storgPath }" alt="${gradVo.major }"
														style="width: 100%; padding: 1em 1em 0 1em; height: 83px;">

												</div>
												<div class="w3-container w3-center">
													<h4 style="height: 2em;">
														<strong>${gradVo.lab }</strong>
													</h4>
													<p style="font-size: 1.8vmin;">${gradVo.slctnTitle }</p>
												</div>

												<div class="w3-container">
													<div class="w3-light-grey w3-tiny">
														<c:choose>
															<c:when test="${gradVo.percent > 100}">
																<div class="w3-light-grey w3-tiny">
																	<div class="w3-container"
																		style="width: 100%; background-color:${gradVo.symbolColorNm}; height : 1.5px; "></div>
																</div>
															</c:when>
															<c:when test="${gradVo.percent < 0}">
																<div class="w3-light-grey w3-tiny">
																	<div class="w3-container"
																		style="width: 0; height: 1.5px;"></div>
																</div>
															</c:when>
															<c:otherwise>
																<div class="w3-light-grey w3-tiny">
																	<div class="w3-container"
																		style="width: ${gradVo.percent}%; background-color:${gradVo.symbolColorNm}; height : 1.5px;"></div>
																</div>
															</c:otherwise>
														</c:choose>

													</div>
												</div>
											</div>
											<div class="w3-row-padding w3-padding">
												<div
													class="doScrap w3-padding w3-display-bottomleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large do-scrapnoti${gradVo.slctnNotiNo }">
													<i class="far fa-thumbtack w3-large"
														onclick="doScrap('모집공고',${gradVo.slctnNotiNo },'',${authUser.mbNo });"></i>
												</div>
												<span
													class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
													style="float: right;"> <c:choose>
														<c:when test="${gradVo.slctnYycl=='9999' }">
															<div class="noti-endtext">상시모집</div>
														</c:when>
														<c:when
															test="${gradVo.dday > 0 && gradVo.dday > gradVo.totaldays}">
															<div class="noti-endtext">모집예정</div>
														</c:when>
														<c:when
															test="${gradVo.dday > 0 && gradVo.dday <= gradVo.totaldays}">
															<div class="noti-endtext">D-${gradVo.dday}</div>
														</c:when>
														<c:when test="${gradVo.dday == 0 }">
															<div class="noti-endtext">오늘마감</div>
														</c:when>
														<c:when test="${gradVo.dday < 0 }">
															<div class="noti-endtext">모집마감</div>
														</c:when>
													</c:choose>
												</span>
											</div>

										</div>
									</div>


								</c:when>
							</c:choose>
						</c:forEach>
					</div>







					<div class="row distinct-line">
						<c:forEach items="${labList }" var="labVo" varStatus="status">
							<c:choose>
								<c:when test="${labVo.pNm == codeVo.cdNm}">


									<div class="w3-col s12 m6 l3 w3-row-padding w3-margin-bottom">
										<div
											class="w3-display-container w3-card w3-round-large w3-white">
											<div class="noti-card"
												onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${labVo.slctnNotiNo}&tabnm=${labVo.slctnNotiDstnct}'">
												<div class="w3-padding w3-text-grey w3-small"
													style="margin-bottom: -1.5em;">
													<c:choose>
														<c:when test="${labVo.bk21EorgnzSuprtYn == 'Y' }">
															<span class="w3-red"
																style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
															<span class="w3-blue"
																style="padding-right: 5px; padding-left: 0px;">21+</span>
														</c:when>
														<c:otherwise>
															<span
																style="padding-right: 2px; padding-left: 10px; margin-right: -5px"></span>
															<span style="padding-right: 5px; padding-left: 0px;"></span>
														</c:otherwise>
													</c:choose>
												</div>
												<div style="margin-bottom: 0em;">
													<img src="${labVo.storgPath }" alt="${labVo.major}"
														style="width: 100%; padding: 1em 1em 0 1em; height: 83px;">

												</div>
												<div class="w3-container w3-center">
													<h4>
														<strong>${labVo.major }</strong>
													</h4>
													<h4 style="height: 2em;">
														<strong>${labVo.lab }</strong>
													</h4>
													<p style="font-size: 1.8vmin;">${labVo.slctnTitle }</p>
												</div>

												<div class="research-field w3-padding text-center">
													<c:forEach items="${labCodeList }" var="labCodeVo"
														varStatus="status">
														<c:if test="${labCodeVo.slctnNotiNo==labVo.slctnNotiNo }">
															<span class="w3-tag w3-light-grey w3-tiny ">${labCodeVo.cdNm }</span>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<div class="w3-row-padding w3-padding">
												<div
													class="doScrap w3-padding w3-display-bottomleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large do-scrapnoti${labVo.slctnNotiNo }">
													<i class="far fa-thumbtack w3-large"
														onclick="doScrap('모집공고',${labVo.slctnNotiNo },'',${authUser.mbNo });"></i>
												</div>
												<span
													class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"
													style="float: right;"> <c:choose>
														<c:when test="${labVo.slctnYycl=='9999' }">
															<div class="noti-endtext">상시모집</div>
														</c:when>
														<c:when
															test="${labVo.dday > 0 && labVo.dday > labVo.totaldays}">
															<div class="noti-endtext">모집예정</div>
														</c:when>
														<c:when
															test="${labVo.dday > 0 && labVo.dday <= labVo.totaldays}">
															<div class="noti-endtext">D-${labVo.dday}</div>
														</c:when>
														<c:when test="${labVo.dday == 0 }">
															<div class="noti-endtext">오늘마감</div>
														</c:when>
														<c:when test="${labVo.dday < 0 }">
															<div class="noti-endtext">모집마감</div>
														</c:when>
													</c:choose>
												</span>
											</div>

										</div>
									</div>


								</c:when>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>




	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/doscrap.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/study.js"></script>


</body>

</html>
