<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>카드 등록</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

<!-- 	<link rel="stylesheet" type="text/css" href="dist/snackbar.min.css" />
		<script src="dist/snackbar.min.js"></script> -->
</head>

<body class='regist-body'>
	<header class='regist-header'>
		<i class="fas fa-bars menu-icon" style="display: inline-block;"></i>
		<h4 style="display: inline-block;">오토 페이 서비스</h4>
	</header>

	<section class='regist-section'>
		<div class='description-div'>
			<p class="title">사용 카드 등록</p>
			<p class="description">항목을 빠짐없이 입력하세요</p>
		</div>

		<div class='input-div'>
			<form>
				<div class="form-group card-form">
					<label for="card_num_first" style="display: block;">카드번호</label>
					<input style="height: 35px;" type="number" name="card_num_first" id="card_num_first" 
					maxlength="4" required onKeyPress="return numkeyCheck(event)" class='form-control'> 
					<span>-</span>
					<input style="height: 35px;" type="password" name="card_num_second" id="card_num_second"
					maxlength="4" required onKeyPress="return numkeyCheck(event)" class='form-control'>
					<span>-</span>
					<input style="height: 35px;" type="password" name="card_num_third" id="card_num_third"
					maxlength="4" required onKeyPress="return numkeyCheck(event)" class='form-control'>
					<span>-</span>
					<input style="height: 35px;" type="number" name="card_num_fourth" id="card_num_fourth"
					maxlength="4" required onKeyPress="return numkeyCheck(event)" class='form-control'>
				</div>
				<div class="form-group valid-form">
					<label for="month">만료일</label> 
					<div class="input-group mb-3" style="width: 50%;">
					  <input style="height: 35px;" type="text" name="month" id="month" required
					  placeholder="MM" maxlength="2" required
					  onKeyPress="return numkeyCheck(event)" class='form-control'>
					  <div style="height: 35px;" class="input-group-prepend">
					    <span class="input-group-text"> / </span>
					  </div>
					  <input style="height: 35px;" type="text" name="year" id="year" required placeholder="YY"
					  maxlength="2" required onKeyPress="return numkeyCheck(event)"  class='form-control'>
					</div>
				</div>
				<div class="form-group name-form">
					<label for="name" style="display: block;">카드 소유자 이름</label>
					<input style="height: 35px; width: 50%;" type="text" name="name" id="name" required class='form-control' style="width: 50%;">
				</div>
				<div class="form-group cvc-form">
					<label for="number" style="display: block;">보안코드(CVC/CVV)</label>
					<input style="height: 35px; width: 50%;" type="number" name="cvc_num" id="cvc_num"
							maxlength="3" required onKeyPress="return numkeyCheck(event)" 
							required class='form-control'>
				</div>
				<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
			</form>
<!-- 			
			<table>
				<tbody>
					<tr class='card-number-tr'>
						<th>카드 번호</th>
						<td>
							<input type="number" name="card_num_first"
							id="card_num_first" maxlength="4" required
							onKeyPress="return numkeyCheck(event)" class=''> -<input
							type="password" name="card_num_second" id="card_num_second"
							maxlength="4" required onKeyPress="return numkeyCheck(event)">
							-<input type="password" name="card_num_third" id="card_num_third"
							maxlength="4" required onKeyPress="return numkeyCheck(event)">
							-<input type="number" name="card_num_fourth" id="card_num_fourth"
							maxlength="4" required onKeyPress="return numkeyCheck(event)">
						</td>
						</
					</tr>

					<tr class='valid-date-tr'>
						<th>만료일</th>
						<td><input type="text" name="month" id="month" required
							placeholder="MM" maxlength="2" required
							onKeyPress="return numkeyCheck(event)"> /<input
							type="text" name="year" id="year" required placeholder="YY"
							maxlength="2" required onKeyPress="return numkeyCheck(event)">
						</td>
					</tr>

					<tr>
						<th>카드 소유자 이름</th>
						<td><input type="text" name="name" id="name" required>
						</td>
					</tr>

					<tr>
						<th>보안코드(CVC/CVV)</th>
						<td><input type="number" name="cvc_num" id="cvc_num"
							maxlength="3" required onKeyPress="return numkeyCheck(event)">
						</td>
					</tr>

				</tbody>
			</table>
			 -->
		</div>

		<div class='button-div'>
			<button name="join" id="join" class="btn  my-button" onclick="submit()">등록</button>
			<button type="reset" name="cancel" id="cancel" class="btn my-button">취소</button>
		</div>
	</section>

	<footer class='regist-footer'> </footer>

	<!-- 카드 등록 토스트 -->
	<div class="toast" role="alert" aria-live="assertive" aria-atomic="false" id='registToast'>
		<div class="toast-header">
			<svg class="bd-placeholder-img rounded mr-2" width="20" height="20" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#007aff" width="100%" height="100%"></rect></svg>
			<strong class="mr-auto">카드등록</strong>
			<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="toast-body">카드 등록이 완료되었습니다.dddddd</div>
	</div>

</body>
</html>

<script>
	$(document).ready(function() {
		$('body').width($(window).width());
		$('body').height($(window).height());
		
		$('#registToast').toast('show');
	});
	
	function numkeyCheck(e) {
		var keyValue = event.keyCode;
		if (((keyValue >= 48) && (keyValue <= 57)))
			return true;
		else
			return false;
	}
	
	function submit() {
		console.log('ss');
		
		
		var data = {};
		data.cardNum = $('#card_num_first').val().toString() + $('#card_num_second').val().toString()
										 + $('#card_num_third').val().toString() + $('#card_num_fourth').val().toString();
		data.cardValid2 = $('#month').val();
		data.cardValid1 = $('#year').val();
		data.cardCvc = $('#cvc_num').val();
		data.cardOwner = $('#name').val();
		console.log(data);
		
 		$.ajax({
			type : "post",
			url : "/mobile/card/regist",
			data : JSON.stringify(data),
			dataType : "text",
			traditional : true,
			contentType: "application/json; charset=utf-8",
			success : function(data) {
				console.log("success .. ");
				console.log(data);
				alert('등록이 완료되었습니다');
				/* 				
				Snackbar.show({
					text: '등록이 완료되었습니다.',
					actionText: 'OK',
					actionTextColor: '#f66496',
					pos: 'top-center'
				}); 
				*/ 
			    setTimeout(function() {
			    	window.open("<%= application.getContextPath()%>/pos/main");
			    }, 3500);
			},
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});
		
	}
</script>

<style>
.regist-body {
	margin: 0;
	position: absolute;
	top: 0;
	left: 0;
}

.regist-header {
	position: relative;
	float: left;
	width: 100%;
	height: 10%;
	line-height: 10vw;
	background-color: #298478;
	color: white;
	font-size: 5vw;
}

.regist-section {
	position: relative;
	float: left;
	width: 100%;
	height: 80%;
	padding: 3vw 15px 3vw 15px;
	background-color: white;
	color: black;
	font-size: 4vw;
	border-bottom: solid 1px black;
}

.regist-footer {
	position: relative;
	float: left;
	width: 100%;
	height: 10%;
	background-color: #298478;
	color: black;
	font-size: 4vw;
	border-bottom: solid 1px black;
}

.card-number-tr input {
	width: 40px;
}

.valid-date-tr input {
	width: 60px;
}

.description-div {
	height: 17%;
}

.input-div {
	height: 73%;
}

.button-div {
	height: 10%;
	text-align: center;
	margin: 13px 0px;
}

/* 숫자 입력창의 화살표 제거 */
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

/* 헤더 */
header {
	
}
/* 모바일 메뉴 아이콘 */
.menu-icon {
    margin: 0 auto;
    padding: 20px 10px 20px 15px;
    font-size: larger;
}

.card-form input {
	width : 20%;
	display: inline-block;
}

.card-form span {
	margin : 7px 0px;
}

label {
	font-size: 14px;
}

.description-div .title {
	margin-bottom: 1px;
    font-size: 25px;
    font-weight: bold;
}

.description-div .description {
    font-size: 13px;
}

.my-button {
	padding: 5px 10px;
    margin: 0px 12px;
    font-size: 13px;
    background-color: #ffffff;
    border-color: #c6c6c6;
    color: #023a32;
}


#join :hover {
    background-color: #298478;
    border-color: #c6c6c6;
    color: #ffffff;
}


#cancel :hover {
    background-color: #298478;
    border-color: #c6c6c6;
    color: #ffffff;
}
</style>