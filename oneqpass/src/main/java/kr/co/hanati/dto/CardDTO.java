package kr.co.hanati.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class CardDTO {

	 private String carNum; //������ȣ
	 private String cardNum; //ī���ȣ
	 private String cardValid1; //����⵵
	 private String cardValid2; //��������
	 private String cardOwner; //ī�� ������
	 private String cardCvc; //�����ڵ�
	 private String regdate; //ī�� ��� ��¥
	 
}
