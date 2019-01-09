<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<!DOCTYPE HTML>
<html>
	<head>
		<title>카드 등록</title>
<!-- 		<link rel="stylesheet" type="text/css" href="dist/snackbar.min.css" />
		<script src="dist/snackbar.min.js"></script> --> 
	</head>
	
	<body class='regist-body'>
		<header class='regist-header'>
		
		</header>

	<section class='regist-section'>
		<div class='description-div'>
			<h2 class="title">사용 카드 등록</h2>
			<p class="title">항목을 빠짐없이 입력하세요</p>
		</div>

		<div class='input-div'>
			<table>
				<tbody>
					<tr class='card-number-tr'>
						<th>카드 번호</th>
						<td>
							<input type="number" name="card_num_first"
							id="card_num_first" maxlength="4" required
							onKeyPress="return numkeyCheck(event)">
							-<input type="password" name="card_num_second" id="card_num_second"
							maxlength="4" required onKeyPress="return numkeyCheck(event)">
							-<input type="password" name="card_num_third" id="card_num_third"
							maxlength="4" required onKeyPress="return numkeyCheck(event)">
							-<input type="number" name="card_num_fourth" id="card_num_fourth"
							maxlength="4" required onKeyPress="return numkeyCheck(event)">
						</td>
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
		</div>

		<div class='button-div'>
		  <button name="join" id="join" onclick="submit()">등록</button>
		  <button type="reset" name="cancle" id="cancle">취소</button>
		</div>
	</section>
	
	<footer class='regist-footer'>
  </footer>
 </body>
</html>

<script>
	$(document).ready(function() {
		$('body').width($(window).width());
		$('body').height($(window).height());
		
		
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
			    }, 3000);
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
	margin:0;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
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
	padding: 3vw 0 3vw 0;
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
	width:40px;
}

.valid-date-tr input {
	width:60px;
}

.description-div {
	height : 20%;
}

.input-div {
	height : 70%;

}

.button-div {
	height : 10%;
	text-align: center;
}


/* 숫자 입력창의 화살표 제거 */
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}


</style>