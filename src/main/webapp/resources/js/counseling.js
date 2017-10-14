
	var bbsNo;
	var test;
	var order; 
	var boardtype;
	var count=0;
	var totalListNum = 0;
	var ttype;


	var isEnd = false;

	var dislistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list-item.ejs"});
	var dislistTemplate = new EJS({	url : "/net/resources/js/ejs-template/discussion-list.ejs"});
	var counlistItemTemplate = new EJS({	url : "/net/resources/js/ejs-template/counseling-list-item.ejs"});
	var counlistTemplate = new EJS({	url : "/net/resources/js/ejs-template/counseling-list.ejs"});	
	var pagelistTemplate = new EJS({url : "/net/resources/js/ejs-template/page-list.ejs"});
	var disbFetching = false;
	
	
	function reset(type,order1){
		
		
				
		if(totalListNum >= 20){
			pageList(type, order1, '1' , '' , ttype);
		}
		else {
		$("#list").empty();
	
		
		order=order1;
		 isEnd=false;
		 disfetchList(type,order,ttype);
		 totalListNum = 0;
		}
		 
	}
	
	
	var disfetchList = function(type,order, ttype, callback) {
			
		if (isEnd === true) {
			return;
		}
		
		var startNo;
		var startNo2; 
		var user = 	$("#authUser").val();
		
			
		if(type == '전체') {
			startNo = $("#list .w3-card:last-child").find('input').val() || 0;
			
		}else{
			
			startNo = $("#list .w3-card:last-child").find('input').val() || 0;
			
		}

		
		$.ajax({
			url : "/net/counseling/api/list?sno="+startNo+"&type="+type+"&order="+order+"&ttype="+ttype,
			type : "get",
			dataType : "json",
			data : "",
			success : function(response) {
			test=response.data;
			

				if (response.result === "fail") {
					console.warn(response.message);
					return;
				}

				if (response.data.counselingList.length < 5) {
					console.log(response.data.counselingList.length);
					isEnd = true;
				}
				var ttype2 = ttype;
				$.each(response.data.counselingList, function(index, vo) {
					
					
					
					
					vo.user = user;
					disrender(type, vo);
					totalListNum++;
					if (totalListNum >= 20) {
						isEnd = true;
						pageList(type, order, '1', 'init', ttype2);
					}
				});
				
				

				disbFetching = false;
				
				/* ejs 변경
				startNo2=startNo;
				for(var i=0; i<response.data.counselingList.length; i++){
					
					
					for(var j=0; j<response.data.fileList[i].length; j++){
						
						
						count=1+parseInt(i)+parseInt(startNo2);

						$('.listimg'+count).css("background-image"," url('"+response.data.fileList[i][j].storgPath+"')"); 
						$('.listimg'+count).css("background-position","center"); 
						$('.listimg'+count).css("height","200px"); 
						$('.listimg'+count).css("margin","5px 0 5px 0"); 
						$('.listimg'+count).html("<div class='w3-large w3-display-bottomleft w3-padding w3-text-white w3-round-large' style='background-color: rgba(0,0,0,0.5);'>"+response.data.fileList[i][j].wrtbtTitle+
								"</div>");
						$('.listimg'+count).html("<div class='w3-padding w3-display-topleft w3-display-hover w3-margin-left w3-margin-top w3-animate-opacity w3-white w3-round-large'> <i class='fa fa-heart w3-text-red w3-large'></i></div>");
						
						break;
					}
					
					
					
				}
				*/
				
				if (typeof(callback) == "function") callback();
				
				
			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
				disbFetching = false;
			}
		});

	}
	

	var disrender = function(type,vo, mode) {
		var html;

		if(type==='전체'){
			html = dislistItemTemplate.render(vo);
		}
		else{
			
			html = dislistItemTemplate.render(vo);
			
		}

		if (mode === true) {
			$("#list").prepend(html);
		} else {
			$("#list").append(html);
			
		}

	}


	var pageList = function(type, order, page, check, ttype) {


		var user = 	$("#authUser").val();
		
		console.log(ttype);
		
		$.ajax({
			url : "/net/counseling/api/pagelist?page=" + page + "&type=" + type
					+ "&order=" + order + "&user=" + user + "&ttype=" + ttype,
			type : "get",
			dataType : "json",
			data : "",
			success : function(response) {
				console.log(response);

				if (response.result === "fail") {
					console.warn(response.message);
					return;
				}

				var vo;

				vo = response.data;
				vo.type = type;
				vo.order = order;
				vo.check = check;
				vo.user = user;
				vo.ttype=ttype;

				pageListrender(type, vo);

			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
			}
		});

	}


	var pageListrender = function(type, vo, mode) {
		var html;
		var listhtml;
		

		html = pagelistTemplate.render(vo);

		if (vo.check != 'init') {
			if (type === '전체') {
				listhtml = dislistTemplate.render(vo);
			} else {
				listhtml = dislistTemplate.render(vo);
			}
		}

		$("#list").html(listhtml);
		$("#pagelist").html(html);
		

		for(var i=0;i<vo.scrapList.length;i++){
			if(vo.scrapList[i].prntsDstnct==='게시글'){ //게시글
				$('.do-scrapcoun' + vo.scrapList[i].prntsNo).addClass('scrap-on');
			}
		};

	}

	function changeColor(obj) {

		
	   $(".objectbutton1").removeClass("on");
	   $(".objectbutton2").removeClass("on");
	   
	   if(obj.value == "일반게시판"){
		   
		   $(".objectbutton2").addClass("on");
		  
		   
	   }else{
		   
		   $(".objectbutton1").addClass("on");
		  
	   }	   
	}
	

	$(function() {

		
	
		var authUser = $("#authUser").val();

		 		 
			$("#headerBtn").click(function(event) {
				
				type="전체";	
				
			
			});
			
			$("#myBtn").click(function(event) { 
				
				type=boardtype;
				

			});
			
			
			type=boardtype;
			

			$(".writeBtn").click(function() { 
				

				console.log("글쓰기")
				if (authUser === null || authUser === '' || authUser === undefined) {
					
					$("#loginForm").css({
						"display" : "block"
					});

				} else {
					
					$("#boardoption").val(type).attr("selected", "selected");
					
					

					$("#writeModal").css({
						"display" : "block"
					});
										

				}

			});
		
		
		$(document).on('click', "a.detail", function() { 
			
			//if (authUser === null || authUser === '') {
			
			//$(".detail").removeAttr("href");
			
			//$("#loginForm").css({
			//	"display" : "block"
			//});

		//}        
		});
		
		
		
		$(".close").click(function() {
			$("#writeModal").css({
				"display" : "none"
			});
			
			
		});

		$('.html').on('click touchstart', function(event) {
			
			if (event.target.id === "writeModal") {
				$("#writeModal").css({
					"display" : "none"
				});
			}
			
			if (event.target.id === "searchForm") {
				$("#searchForm").css({
					"display" : "none"
				});
			}
			
			
			if (event.target.id === "registerForm") {
				$("#registerForm").css({
					"display" : "none"
				});
				
				initSignupModal();
			}
			

			if (event.target.id === "loginForm") {
				$("#loginForm").css({
					"display" : "none"
				});
				
				initLoginModal();
			}
			
	    });
		
		
		$("html").click(function(event) {
			
			if (event.target.id === "writeModal") {
				$("#writeModal").css({
					"display" : "none"
				});
			}
			
			if (event.target.id === "searchForm") {
				$("#searchForm").css({
					"display" : "none"
				});
			}
			
			
			if (event.target.id === "registerForm") {
				$("#registerForm").css({
					"display" : "none"
				});
				
				initSignupModal();
			}
			

			if (event.target.id === "loginForm") {
				$("#loginForm").css({
					"display" : "none"
				});
				
				initLoginModal();
			}
			
			
		});
		
		$('.setting').on('click',function(){
			
    		if(authUser=='undefined'||authUser == null || authUser == "" ){
    			
    			$('#loginForm').css('display','block');
    		}else{
    			
    			location.href='/net/user/setting'
    		}
    	})
    	    	
    	$('.mypage').on('click',function(){
    		if(authUser=='undefined'|| authUser == null || authUser == "" ){
    			$('#loginForm').css('display','block');
    		}else{
    			location.href='/net/user/mypage'
    		}
    	})
    	
    	$('.myscrap').on('click',function(){
    		if(authUser=='undefined'|| authUser == null || authUser == "" ){
    			$('#loginForm').css('display','block');
    		}else{
    			location.href='/net/user/mypage?type=myscrap'
    		}
    	})
		
    	
    	$('.doScrap').on('click',function(){
    		if(authUser=='undefined'|| authUser == null || authUser == "" ){
    			$('#loginForm').css('display','block');
    		}
    	})
    	
    
    	
		
		$('#writrInfoOpngYn2 li > a').on('click', function() { 

			
			 document.getElementById("writrInfoOpngYn").innerHTML = 
				 
				 "<option  class='hide' value='Y'></option>"+
				  "<option value='N' selected='selected'>비공개로 작성하기</option>";
		});

		
		
		$(document).keydown(function(e) { 
			

			  var modal1 = document.getElementById('writeModal');
		    if (e.keyCode == 27) { 
		    	
				   modal1.style.display = "none";
		    } 
		});
		
		

	})
	
	function resize(obj) {
			

			 obj.style.height = "1px";
			 obj.style.height = (12+obj.scrollHeight)+"px";
			
			 $("#writeModal").scrollTop($("#writeModal")[0].scrollHeight);


	}
	

	function titleResize(obj) {

		obj.style.height = "1px";

		obj.style.height = (20 + obj.scrollHeight) + "px";

	}


	function counselinginsert() {

		
		
		 var formData = new FormData($("#counselingform")[0]);

		 
		var boardoption=$("#boardoption").val();
		 
		 var writrInfoOpngYn = $("#writrInfoOpngYn").val();
		
		
		formData.append('writrInfoOpngYn', writrInfoOpngYn);
		

		$("#writeModal").css({
			"display" : "none"
		});

		
		$.ajax({
			url : "/net/counseling/api/write",
			type : "post",
			data : formData,
			processData : false,
            contentType : false,


			success : function(response) {

				if (response.result === "fail") {

					console.error(response.message);
					return;
				}

				
				location.reload();

			},
			error : function(jqXHR, status, e) {
				
				console.error(status + " : " + e);
				console.log(jqXHR);
			}
		});
		
		
		

	}
	

	
	
	

