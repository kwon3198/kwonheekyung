package kr.or.member;

import kr.or.member.MemberVO;

public class MemberService {
	//액션-서비스 클래스 - 출력용 매서드 작성
	//매개변수로 배열을 받아서 출력하는 형태로 작성
	public void printMembers(MemberVO[] members) {
		//배열 members에 들어있는 값을 처음부터 끝까지 차례대로 하나씩 꺼내서 선언된 변수에 담아서 출력한다.
		for(MemberVO m : members) {//m1,m2,m3 for 반복문 사용. 첫번째 요소부터 마지막 요소까지 출력
			System.out.println("이름은  " + m.getName() +" | 나이는 " + m.getAge() + " | 전화번호는 " + m.getPhoneNum() + "입니다.");
		}
	}
}
