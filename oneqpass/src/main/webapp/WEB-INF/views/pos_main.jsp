<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>포스기</title>
<!-- jQuery library -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
   integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
   crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
   integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
   crossorigin="anonymous"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
   integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
   crossorigin="anonymous"></script>
<script type="text/javascript">
   var sum = 0;
   var sum2 = 0;
   var cnt = 0;
   function add(num) {
      var number = parseInt(num);
      /* var display = document.getElementById("totalAmount"); */
      sum = sum + number;
      $('#totalAmount').html(sum);
      $('#goods').html('아메리카노');
      $('#count').html(++cnt);
      $('#totalAmount2').html(sum);
   }

   function send() {
/* 		var hello = function() {
            alert("결제가 완료되었습니다.");
        }
        setTimeout(hello, 1500); */
         var data = {};
         data.cost = parseInt($('#totalAmount2').html());
         data.cost = '4100';
         data.item = '아메리카노';
         data.quantity = 1;
         console.log(data);
         
       var form = $('<form></form>');
       form.attr("method", "post");
       form.attr("action", '<%=application.getContextPath()%>/pos/charge');

      var costField = $('<input></input>');
      costField.attr("type", "hidden");
      costField.attr("name", 'cost');
      costField.attr("value", data.cost);

      var itemField = $('<input></input>');
      itemField.attr("type", "hidden");
      itemField.attr("name", 'item');
      itemField.attr("value", data.item);

      var quantityField = $('<input></input>');
      quantityField.attr("type", "hidden");
      quantityField.attr("name", 'quantity');
      quantityField.attr("value", data.quantity);

      form.append(costField);
      form.append(itemField);
      form.append(quantityField);

      $(document.body).append(form);
      form.submit();

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
</html>