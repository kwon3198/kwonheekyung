package kr.or.test;

import java.util.StringTokenizer;

public class Split {

	public static void main(String[] args) {
		String str = "아이디,이름,패스워드";
		//방법1 split()메소드 사용
		System.out.println("Split을 사용한 문자열 분리");//정규식regex
		String[] tokens = str.split(",");
		int cnt=0;
		for(String token : tokens) {
			System.out.println("배열["+(cnt++) +"]" + token +"| ");
		}
		System.out.println();
		//방법2(StringTokenizer 이용)
		System.out.println("StringTokenizer를 이용한 문자열 분리");
		StringTokenizer st = new StringTokenizer(str, ",");
		while(st.hasMoreTokens()) {
			String token =st.nextToken();
			System.out.println(token);
		}
	}
}
