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
//java ������ ���
//@ContextConfiguration(classes = {org.zerock.config.RootConfig.class})
@Log4j
public class CardServiceTests {
	
	@Inject
	private CardService service;
	/*
	@Test
	public void testInsert() {
		
		CardDTO card = new CardDTO();
		card.setCarNum("12��3121");
		card.setCardNum("0000111122223333");
		card.setCardOwner("���ϳ�");
		card.setCardValid1("21");
		card.setCardValid2("03");
		card.setCardCvc("123");
		
		boolean num = service.register(card);
		log.info("���� �ߵ���?"+num);
	}
	*/
	@Test
	public void testInsert() {
		
		PaymentDTO payment = new PaymentDTO();
		payment.setItem("���̽��Ƹ޸�ī��");
		payment.setCost("4100");
		payment.setQuantity("1");
		
		boolean paymentresult = service.payment(payment);
		log.info("���� �ߵ���?"+paymentresult);
	}
}