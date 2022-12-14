<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>코드그룹 목록</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
    <!-- user css -->
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn.icon-icons.com/icons2/2091/PNG/512/settings_icon_128522.png">
	<link rel="stylesheet" href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022091023"/>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<style type="text/css">

	a:link {
			color:black;
			text-decoration: none;
	}
	a:visited {
			color: none;
			text-decoration: none;
	}
	a:hover {
			color:mediumpurple;
			text-decoration: none;
	}
	
	.gnb .logout {
	    display: inline-block;
	    font-size: 14px;
	    font-weight: bold;
	    color: #999999;
	    position: absolute;
	    top: 39px;
	    right: 235px;
	}
	
	.searchhead{
		padding: 15px;
		margin: 10px 0 5% 0;
		border-radius: 6px;
		border: 1px solid mediumpurple;
	}
	
	.col-2 {
		max-width: 140px;
	}
	
	.btn-outline-secondary {
		width: 35px;
		height: 35px;
	}
	
	input {
		font-size: small;
	}
	
	table {
		margin: 5% 0;
	}
	
	th, td {
		text-align : center;
		vertical-align: middle;
		height: 35px;
	}
	
	th {
		font-weight: bold;
	}
	
	.row {
		padding: 20px;
	}
	
	.abc {
		margin: 2% 15%;
	}
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
	#viewsel {
		width: 70px; 
		height: 40px; 
		float: right;
	}
	
	#regbtn, #delbtn, #excelbtn {
		display: inline;
		width: 35px;
		height: 33px;
	}
	
	#regbtn, #delbtn {
		float: right;
	}
	
	#myTab {
		width: 267px;
	}
	
	#listtab button {
		width: 100px;
	}
	
	#regmodtab button {
		width: 167px;
	}
	
	.nav-tabs {
		--bs-nav-tabs-link-active-color: #6900EF;
		--bs-nav-tabs-link-active-border-color: #6900EF #6900EF #fff; 
	}
	
	.nav {
		--bs-nav-link-hover-color: #9154f3;
		width: 333px;
	}
	
	.nav-link {
		color : gray;
	}
	
	#lefttab.nav-link.active {
		color: #6900EF;
	}
	
	.count {
		display: inline;
		margin: 3% 0;
	}
	
	.pagination {
		justify-content: center;
		--bs-pagination-color: mediumpurple;
		--bs-pagination-hover-color: mediumpurple;
		--bs-pagination-focus-color: #6900EF;
		--bs-pagination-active-bg: #6900EF;
    	--bs-pagination-active-border-color: #6900EF;
    	margin: 3% 0;
	}
	
	.page-link {
		height: 30px;
	}
	
	#modbtn {
		display: block;
		margin: auto;
		background-color: #9154f3;
		color: white;
		border: none;
		border-radius: 4px;
		width: 140px;
		height: 60px;
		font-size: 20px;
	}
	
	.flex-column {
		width: 200px;
		height: 100vh;
		margin: 3% 0 0 0;
	} 
	
	#lefttab {
		height: 100px;
		font-size: 1.4rem;
		font-weight: bold;
		vertical-align: middle;
	}
	
	input[type='search'] {
		display: block;
		border: 1px solid #ced4da;
		border-radius: 0.375rem;
	}
	
</style>
	
<body>

<!-- start -->
	<div class="header" style="left: 0px;">
        <div class="inner">
            <h1 class="logo">
                <a href="/"><span class="blind">COOCHA</span></a>
                <span class="title-category">카테고리</span>
            </h1>

            <div class="hamburger">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>

            <ul class="gnb login">
            	<li><span class="logout">로그아웃</span></li>
				<li><a href="javascript:;" class="btn-my btn-layer-open"><span class="blind">MY</span></a></li>
				<li><div class="btn-like"><span class="blind">좋아요</span></div></li>
				<li>
				    <div class="btn-sc btn-layer-open"><span class="blind">더보기</span></div>
				    <div class="area-servic-center area-gnb-layer">
				        <div class="title">고객센터</div>
				        <ul>
				            <li>공지사항</li>
				            <li>FAQ</li>
				            <li>1:1 문의</li>
				        </ul>
				    </div>
				</li>
			</ul>
        </div>
    </div>
    <br><br>
	<div class="abc">
		<div class="row">
			<div class="col-3">
	    		<nav class="nav flex-column">
	    			<a class="nav-link" href="../member/memberList" id="lefttab">회원 관리</a>
					<a class="nav-link" href="../item/itemList" id="lefttab">상품 관리</a>
					<a class="nav-link active" aria-current="page" href="codeGroupList" id="lefttab">코드그룹 관리</a>
					<a class="nav-link" href="../code/codeList" id="lefttab">코드 관리</a>
				</nav>
	    	</div>
    		<div class="col-9">
				<ul class="nav nav-tabs" id="myTab">
					<li class="nav-item">
						<button class="nav-link active" id="listtab"><b>코드그룹 목록</b></button>
					</li>
					<li class="nav-item">
						<button class="nav-link" id="regtab">코드그룹 등록 및 수정</button>
					</li>
				</ul>
				<br>
				<div class="searchhead">
					<form method="post" name="formList">
						<input type="hidden" name="seq">
						<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
						<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
						<input type="hidden" name="checkboxSeqArray">
						
						<div class="row">
							<div class="col-1">
								<h5><b>검색분류</b></h5>
							</div>
							<div class="row justify-content-end">
								<div class="col-2">
									<select class="form-select" name="shDelNy">
										<option value="" <c:if test="${empty vo.shDelNy }">selected</c:if>>삭제여부</option>
										<option value="0" <c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
										<option value="1" <c:if test="${vo.shDelNy eq 1 }">selected</c:if>>Y</option>
									</select>
								</div>
								<div class="col-2">
									<select class="form-select" name="shOptionDate">
										<option value="">날짜선택</option>
										<option value="1">등록일</option>
										<option value="2">수정일</option>
									</select>
								</div>
								<div class="col-3" style="max-width: 150px">
									<input type="text" id="shstartDate" name="shstartDate" class="form-control shDate" value="${vo.shstartDate}" placeholder="시작일" autocomplete="off">
								</div>
								<div class="col-1" style="max-width: 30px">
									<font>~</font>
								</div>
								<div class="col-3" style="max-width: 150px">
									<input type="text" id="shendDate" name="shendDate" class="form-control shDate" value="${vo.shendDate}" placeholder="종료일" autocomplete="off">
								</div>
							</div>
							<div class="row justify-content-end">
								<div class="col-2">
									<select class="form-select" name="shOption" id="selectfield">
										<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>선택</option>
										<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
										<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
										<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영어)</option>
									 </select>
								</div>
								<div class="col-3">
									<input class="form-control" type="search" id="search_input" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어 입력">
								</div>
								<div class="col-1" style="max-width: 55px">
									<button type="button" class="btn btn-outline-secondary" id="reset_btn"><i class="fa-solid fa-rotate-left"></i></button>
								</div>
								<div class="col-1" style="max-width: 55px">
									<button class="btn btn-outline-secondary" id="search_btn"><i class="fa-solid fa-magnifying-glass"></i></button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<font style="font-size: 20px"><b>코드그룹관리</b></font>
				<br><br>
				<div class="count">
					<span>total: </span><c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow + status.index) }"/>
					<select class="form-select" id="viewsel">
						<option selected>10</option>
						<option value="1">15</option>
						<option value="2">30</option>
					</select>
				</div>
				<br>
				<table class="table table-light table-striped table-hover">
					<thead>
						<tr>
							<th scope="col"><input class="form-check-input" type="checkbox" name="check" id="allcheck"></th>
							<th scope="col">번호</th>
							<th scope="col">코드그룹 코드</th>
							<th scope="col">코드그룹 이름(한글)</th>
							<th scope="col">코드그룹 이름(영문)</th>
							<th scope="col">코드개수</th>
							<th scope="col">등록일</th>
							<th scope="col">수정일</th>
							<th scope="col">삭제</th>
						</tr>
					</thead>
					<tbody class="table-group-divider">
						<c:choose>
							<c:when test="${fn:length(list) eq 0 }">
								<td class="text-center" colspan="10">There is no data!</td>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr data-tr_value = "<c:out value="${list.seq }"/>">
										<td><input class="form-check-input" type="checkbox" name="check" value="<c:out value="${list.seq }"/>"></td>
										<td scope="row"><c:out value="${list.seq }"/></td>
										<td><c:out value="${list.codegroupNum }"/></td>
										<td><a href="javascript:goForm(<c:out value="${list.seq }"/>)"><c:out value="${list.name_ko }"/></a></td>
										<td><c:out value="${list.name_eng }"/></td>
										<td><c:out value="${list.codeamount }"/></td>
										<td><c:out value="${list.regDate }"/></td>
										<td><c:out value="${list.modDate }"/></td>
										<td>
											<c:choose>
												<c:when test="${list.delNY eq 0 }">N</c:when>
												<c:otherwise>Y</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<button type="button" class="btn btn-success" id="excelbtn"><i class="fa-regular fa-file-excel"></i></button>
				<button type="button" class="btn btn-danger" id="delbtn" style="margin: 0 0 0 20px"><i class="fa-solid fa-minus"></i></button>
				<a href="codeGroupForm">
					<button type="button" class="btn btn-outline-primary" id="regbtn"><i class="fa-solid fa-plus"></i></button>
				</a>
				<!-- pagination s -->
				<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
				<!-- pagination e -->
			</div>
		</div>
	</div>

<script>

	$(document).ready(function() {
		$("#allcheck").click(function() {
			if($("#allcheck").is(":checked")) $("input[name=check]").prop("checked", true);
			else $("input[name=check]").prop("checked", false);
		});
	
		$("input[name=check]").click(function() {
			var total = $("input[name=check]").length;
			var checked = $("input[name=check]:checked").length;
	
			if(total != checked) $("#allcheck").prop("checked", false);
			else $("#allcheck").prop("checked", true); 
		});
		
		$('#delbtn').click(function(){
	        if(confirm("삭제하시겠습니까?")){
	            $("input[name=check]:checked").each(function(){
	                var tr_value =$(this).val();
	                var tr=$("tr[data-tr_value='"+tr_value+"']");
	                tr.remove();
	            });
	        } else {
	            return false;
	        }
	    });
	});
	
	var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	var goUrlForm = "/codeGroup/codeGroupForm";
	
	var excelUri = "/codeGroup/excelDownload";
	
	var form = $("form[name=formList]");
	
	var seq = $("input:hidden[name=seq]");
	
	var checkboxSeqArray = [];
	
	$("#search_btn").on("click", function(){
		if(validationList() == false) return false;
		form.attr("action", goUrlList).submit();
	});
	
	$("#reset_btn").on("click", function(){
		$(location).attr("href", goUrlList);
	});
	
	$(document).ready(function() {
		$("input.shDate").datepicker();
	});
	
	goForm = function(keyValue) {
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
	
	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd',
		prevText : '이전 달',
		nextText : '다음 달',
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
	});
	
	$(".logout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
</script>
<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>