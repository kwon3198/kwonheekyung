package kr.or.test;

import java.util.StringTokenizer;

public class Split {

	public static void main(String[] args) {
		String str = "아이디,이름,패스워드";
		// 방법1 split()매서드 사용
		System.out.println("Split을 사용한 문자열 분리");
		String[] tokens = str.split(",");
		int cnt = 0;
		for (String token : tokens) {
			System.out.print("배열[" + (cnt++) + "]" + token + "|");
		}

//방법2 Tokenizer
		System.out.println();
		System.out.println("StringTokenizer를 이용한 문장");
		StringTokenizer st = new StringTokenizer(str, ",");
		while (st.hasMoreTokens()) {
			String token = st.nextToken();
			System.out.println(token);
		}
	}

}
