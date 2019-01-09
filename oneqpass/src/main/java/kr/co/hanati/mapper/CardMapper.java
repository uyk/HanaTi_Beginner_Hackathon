package kr.co.hanati.mapper;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.dto.PaymentDTO;

public interface CardMapper {

	public int insertCard(CardDTO cardDto);
	
	public String getCardNum(String carNum);
	
	public int insertPayment(PaymentDTO paymentDto);
}
