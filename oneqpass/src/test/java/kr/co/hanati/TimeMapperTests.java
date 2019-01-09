package kr.co.hanati;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.hanati.mapper.TimeMapper;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//java 설정의 경우
//@ContextConfiguration(classes = {org.zerock.config.RootConfig.class})
@Log4j
public class TimeMapperTests {
	@Inject
	private TimeMapper timeMapper;

	/*@Test
	public void testGerTime() {
		log.info(timeMapper.getClass().getName());
		log.info(timeMapper.getTime());
	}*/
	
	@Test
	public void testGerTime() {
		log.info("getTime2");
		log.info(timeMapper.getTime2());
	}
}