package kr.co.hanati.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class PaymentDTO {

	 private String carNum; 
	 private String cardNum;
	 private String item;
	 private String cost;
	 private String quantity;
}
