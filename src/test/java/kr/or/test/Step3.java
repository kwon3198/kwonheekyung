package kr.or.test;

import java.util.Calendar;

public class Step3 {

	public static void main(String[] args) {
		System.out.println("-------------------------");
		System.out.println("외부 라이브러리를 사용한 열거형-enum 자료형 소스");
		Week today = null;
		
		Calendar cal = Calendar.getInstance();
		int week = cal.get(Calendar.DAY_OF_WEEK);
		System.out.println("Calendar클래스에서 리턴값으로 받은 오늘 요일에 대한 정의 값(수)는 " + week);
		switch(week) {
			case 1:
					today = Week.일; break;
			case 2: 
					today = Week.월; break;
			case 3:
					today = Week.화; break;
			case 4: 
					today = Week.수; break;
			case 5:
					today = Week.목; break;
			case 6: 
					today = Week.금; break;
			case 7:
					today = Week.토; break;
		}
		System.out.println("오늘은: " + today + "요일");
		
		if(today == Week.월 ) {
			System.out.println("월요일은 활기가 넘칩니다.");
		} else {
			System.out.println("열심히 자바 공부합시다.");
		}
	}

}
