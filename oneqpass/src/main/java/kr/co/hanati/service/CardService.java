package kr.co.hanati.service;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.dto.PaymentDTO;

public interface CardService {

	//ī�� ���
	public boolean register(CardDTO card);
	
	//���� ����
	public boolean payment(PaymentDTO payment);
}
