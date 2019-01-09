package kr.co.hanati;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.dto.PaymentDTO;
import kr.co.hanati.mapper.CardMapper;
import kr.co.hanati.mapper.TimeMapper;
import kr.co.hanati.service.CardService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//java 설정의 경우
//@ContextConfiguration(classes = {org.zerock.config.RootConfig.class})
@Log4j
public class CardServiceTests {
	
	@Inject
	private CardService service;
	/*
	@Test
	public void testInsert() {
		
		CardDTO card = new CardDTO();
		card.setCarNum("12바3121");
		card.setCardNum("0000111122223333");
		card.setCardOwner("김하나");
		card.setCardValid1("21");
		card.setCardValid2("03");
		card.setCardCvc("123");
		
		boolean num = service.register(card);
		log.info("서비스 잘들어갔나?"+num);
	}
	*/
	@Test
	public void testInsert() {
		
		PaymentDTO payment = new PaymentDTO();
		payment.setItem("아이스아메리카노");
		payment.setCost("4100");
		payment.setQuantity("1");
		
		boolean paymentresult = service.payment(payment);
		log.info("서비스 잘들어갔나?"+paymentresult);
	}
}