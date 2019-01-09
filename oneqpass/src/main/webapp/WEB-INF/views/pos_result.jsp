<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>포스기</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#myModal').modal('show');
		});
		var sum = 0;
		function add(num) {
			var number = parseInt(num);
			var display = document.getElementById("totalAmount");
			sum = sum + number
			display.value = sum;
		}
	
		function send() {
			var forsendAmount = parseInt(document.getElementById("totalAmount").value);
			alert(forsendAmount);
		}
	</script>

	<style>
	#menu-area {
	   overflow: auto;
	   overflow-x: hidden;
	   margin-top: 3px;
	   width: 100%;
	   background-color: #fff;
	   text-align: center;   
	}
	
	#menu-Amount {
	margin: 20px 30% auto;
	}
	
	.btn-secondary {
	   width: 150px;
	   height: 100px;
	   border-radius: 6px;
	   border: none;
	}
	
	table{
	   margin: 20px auto;
	
	}
	</style>

 </head>
 
 
 
 <body>
<div id="menu-area">
   <table border="0">
      <tr>
         <td><button type="button" class="btn btn-secondary" onclick="add(4100)">아메리카노<br>4,100원</button></td>
         <td><button type="button" class="btn btn-secondary" onclick="add(5500)">카푸치노<br>5,500원</button></td>
         <td><button type="button" class="btn btn-secondary" onclick="add(5500)">카페라떼<br>5,500원</button></td>
         <td><button type="button" class="btn btn-secondary" onclick="add(6300)">자바칩 프라푸치노<br>6,300원</button></td>
      </tr>
   </table>

   <div id="menu-Amount">
      <br><br><br><br><br>
      <div style="text-align: right" >
         <label for="usr" >합계:</label>
         <input type="text" style="text-align: right" id="totalAmount" required placeholder="0">원
      </div>
   </div>
</div>

<div>
   <table border="0">
      <td><button type="button" style="width:125px; height: 55px;" class="btn" onclick="send()">식스센스 결제</button></td>
      <td><button type="button" style="width:125px; height: 55px;" class="btn" onclick="send()">카드</button></td>
      <td><button type="button" style="width:125px; height: 55px;" class="btn" onclick="send()">현금</button></td>
   </table>
</div>



<!-- 모달 -->
<div class="modal" tabindex="-1" role="dialog" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">승인 완료</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>결제가 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">확인</button>
      </div>
    </div>
  </div>
</div>

 </body>
</html>
