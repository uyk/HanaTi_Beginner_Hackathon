package kr.co.hanati.service;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.dto.PaymentDTO;

public interface CardService {

	//카드 등록
	public boolean register(CardDTO card);
	
	//결제 승인
	public boolean payment(PaymentDTO payment);
}
