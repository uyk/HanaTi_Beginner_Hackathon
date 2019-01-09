package kr.co.hanati;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.mapper.CardMapper;
import kr.co.hanati.mapper.TimeMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//java ������ ���
//@ContextConfiguration(classes = {org.zerock.config.RootConfig.class})
@Log4j
public class CardMapperTests {
	
	@Inject
	private CardMapper mapper;
	
	@Test
	public void testInsert() {
		
		CardDTO card = new CardDTO();
		card.setCarNum("12��3121");
		card.setCardNum("1234567812345678");
		card.setCardOwner("���ϳ�");
		card.setCardValid1("21");
		card.setCardValid2("03");
		card.setCardCvc("123");
		
		int num = mapper.insertCard(card);
		log.info("�ߵ���?"+num);
	}
}