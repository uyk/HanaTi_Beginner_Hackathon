package kr.co.hanati.service;
import org.springframework.stereotype.Service;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.dto.PaymentDTO;
import kr.co.hanati.mapper.CardMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
public class CardServiceImpl implements CardService {
	
	private CardMapper mapper;
	
	@Override
	public boolean register(CardDTO card) {
		boolean registerResult = false;
		int insertResult = 0;
		insertResult = mapper.insertCard(card);
		
		if(insertResult == 1) {
			registerResult= true;
		}
		return registerResult;
	}

	@Override
	public boolean payment(PaymentDTO payment) {
		boolean paymentResult = false;
		int insertResult = 0;
		String cardNum = mapper.getCardNum("12¹Ù3121");
		System.out.print(cardNum);
		
		
		if(cardNum != null) {
			payment.setCarNum("12¹Ù3121");
			payment.setCardNum(cardNum);
			
			insertResult = mapper.insertPayment(payment);
			if(insertResult == 1) {
				paymentResult = true;
			}
		}
		
		
		return paymentResult;
	}

}
