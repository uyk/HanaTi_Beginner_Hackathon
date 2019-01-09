
package kr.co.hanati.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.hanati.dto.CardDTO;
import kr.co.hanati.dto.PaymentDTO;
import kr.co.hanati.service.CardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
public class CardController {
	private static final Logger logger = LoggerFactory.getLogger(CardController.class);
	public CardService service;
	
	@RequestMapping(value = "/mobile/card/new", method = RequestMethod.GET)
	public String newTab(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "new_card";
	}
	
	
	/* 모바일 카드 등록 화면 */
	@RequestMapping(value = "/mobile/card", method = RequestMethod.GET)
	public String mobileCard() {
		logger.info("카드 등록 화면 요청");
		return "mobile_card";
	}
	
	
	/* 모바일 알람 화면 */
	@RequestMapping(value = "/mobile/push", method = RequestMethod.GET)
	public String mobilePush() {
		logger.info("결제 요청 알림을 모바일로 보냄");
		return "mobile_push";
	}
	

	/* 차량결제 후 모바일로 페이지 이동 및 에코 */
	@RequestMapping(value = "/pos/charge", method = RequestMethod.POST)
	public String posCharge(Model model, PaymentDTO payment) {
		logger.info("승인페이지 이동");
		model.addAttribute("paymentDTO", payment);
		return "new_push";
	}
	
	/* pos 화면 요청 */
	@RequestMapping(value = "/pos/main", method = RequestMethod.GET)
	public String posMain() {
		logger.info("포스기 메인 화면 요청");
		return "pos_main";
	}

	/* 카드 등록 */
	@PostMapping(value="/mobile/card/regist", consumes="application/json", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> create(@RequestBody CardDTO dto){
		
		dto.setCarNum("12바3125");
		System.out.println(dto);
//		boolean insertResult = service.register(dto);
		boolean insertResult = true;
		return insertResult == true ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	/* 결제 등록 */
	@PostMapping(value="/pos/payment", consumes="application/json", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> payment(@RequestBody PaymentDTO dto){
		System.out.println(dto);
		boolean insertResult = service.payment(dto);
		
		return insertResult == true ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	/* pos 결과 화면 요청 */
	@RequestMapping(value = "/pos/result", method = RequestMethod.GET)
	public String posResult() {
		logger.info("포스기 결제완료 화면 요청");
		return "pos_result";
	}
}
