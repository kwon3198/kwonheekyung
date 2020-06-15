package kr.or.test;

import java.util.regex.Pattern;

public class RegEx {

	public static void main(String[] args) {
		String id = "5Angel1004";
		String regExp = "[a-zA-Z][a-zA-Z0-9]{7,11}";
		boolean isMatch = Pattern.matches(regExp, id);
		if(isMatch) {
			System.out.println("ID로 사용할 수 있습니다");
		}else{
			System.out.println("ID는 최소8자 최대 12자까지 가능하고 영소문자 ,숫자와 특수기호(-)만 사용가능합니다.");
		}
	}

}
