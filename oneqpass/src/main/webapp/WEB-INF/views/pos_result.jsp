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
   width: 100%;
   background-color: #fff;
   text-align: center;
}

#menu-Amount {
   margin: 20px 0px 0px 0px auto;
}

.btn {
   width: 125px;
   height: 90px;
   border-radius: 6px;
   border: none;
   margin: 7px;
}
.delbor {
   border: none;
}
	</style>

 </head>

<body>
   <div>
      <div style="height: 40px;background-color: gray;text-align: center;font-weight: bold;font-size: 20px;padding-top: 3px;">POS</div>
      <div class="row">
         <div class="col-sm-5" 
            style="border-style: solid; border-width: 1px; border-color: gray; padding-left:0px; padding-right:0px">
            <table style="width: 100%; text-align: center">
            	<tr>
                  <td style="border:solid; border-width:1px; width: 50%;">상품</td>
                  <td style="border:solid; border-width:1px; width: 25%;">수량</td>
                  <td style="border:solid; border-width:1px; width: 25%;">가격</td>               
            	</tr>
            	<tr>	
                  <td class="delbor" id="goods"></td>
                  <td class="delbor" id="count"></td>
                  <td class="delbor"id="totalAmount" ></td>               
            	</tr>
            </table>
            <div class="row" style="position:absolute; width: 100%; padding-right:30px; right:0px; bottom:0px; border: solid; border-width: 1px">
            <div class="col-sm-8" style="text-align: right">합계금액</div>
            <div class="col-sm-4" style="text-align: right">
               <span style="text-align: right" id="totalAmount2">0</span>
            </div>
            </div>
         </div>
         <div class="col-sm-7" id="menu-area"
            style="background-color: black; padding:10px">

            <table>
               <tr>
                  <td><button type="button" class="btn btn-primary"
                        onclick="add(3600)">
                        에스프레소<br>3,600원
                     </button></td>
                  <td><button type="button" class="btn btn-warning"
                        onclick="add(4100)">
                        아메리카노<br>4,100원
                     </button></td>
                  <td><button type="button" class="btn btn-secondary"
                        onclick="add(5500)">
                        카푸치노<br>5,500원
                     </button></td>
                  <td><button type="button" class="btn btn-success"
                        onclick="add(5500)">
                        카페라떼<br>5,500원
                     </button></td>
                  <td><button type="button" class="btn btn-danger"
                        onclick="add(4300)">
                        콜드브루<br>4,300원
                     </button></td>
               </tr>

               <tr>

                  <td><button type="button" class="btn btn-primary"
                        onclick="add(5100)">
                        카라멜 마키아또<br>5,100원
                     </button></td>
                  <td><button type="button" class="btn btn-warning"
                        onclick="add(5600)">
                        럼 샷 코르타도<br>5,600원
                     </button></td>
                  <td><button type="button" class="btn btn-secondary"
                        onclick="add(5100)">
                        돌체 라떼<br>5,100원
                     </button></td>
                  <td><button type="button" class="btn btn-success"
                        onclick="add(5100)">
                        카페 모카<br>5,100원
                     </button></td>
                  <td><button type="button" class="btn btn-danger"
                        onclick="add(5300)">
                        헤이즐넛<br>5,300원
                     </button></td>
               </tr>

               <tr>
                  <td><button type="button" class="btn btn-primary"
                        onclick="add(6100)">
                        모카<br>프라푸치노<br>6,100원
                     </button></td>
                  <td><button type="button" class="btn btn-warning"
                        onclick="add(6500)">
                        자바 칩<br>프라푸치노<br>6,500원
                     </button></td>
                  <td><button type="button" class="btn btn-secondary"
                        onclick="add(6500)">
                        그린 티 크림<br>프라푸치노<br>6,500원
                     </button></td>
                  <td><button type="button" class="btn btn-success"
                        onclick="add(6500)">
                        딸기 크림<br>프라푸치노<br>6,500원
                     </button></td>
                  <td><button type="button" class="btn btn-danger"
                        onclick="add(6300)">
                        초콜릿<br>프라푸치노<br>6,300원
                     </button></td>
               </tr>
            </table>
            
            <div style="height: 115px; width:100px"></div>
            <div class="123">
         <table border="0">
            <td><button type="button" class="btn btn-primary"
                  class="btn" onclick="send()">
                  오토페이<br>
               </button></td>
            <td><button type="button" class="btn btn-warning"
                  class="btn" onclick="send()">카드</button></td>
            <td><button type="button" class="btn btn-secondary" style=""
                  class="btn" onclick="send()">현금</button></td>
                  <td><button type="button" class="btn btn-success"
                  class="btn" onclick="send()">거래취소</button></td>
            <td><button type="button" class="btn btn-danger" style=""
                  class="btn" onclick="send()">환전</button></td>
                  
         </table>
      </div>
         </div>
      </div>

   </div>
</body>



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
      <div class="modal-footer" style="padding: 5px;">
        <button type="button" class="btn btn-primary" style="width: 80px; height: 40px;">확인</button>
      </div>
    </div>
  </div>
</div>

</html>
