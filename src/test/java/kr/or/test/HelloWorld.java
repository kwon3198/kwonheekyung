package kr.or.test;

import java.util.ArrayList;
import java.util.List;

class Tire {
	public void run() {
		System.out.println("일반 타이어가 굴러갑니다.");
	}
}

class SnowTire extends Tire {
	public void run() {
		System.out.println("스노우 타이어가 굴러갑니다.");
	}
}

public class HelloWorld {

	public static void main(String[] args) {
		//(page : jsp클릭 변수 - 1) * perPageNum:페이지당 보여줄 갯수;
		int startBno = (1 - 1) * 10;//1페이지
		System.out.println("쿼리변수(1page - 1) * perPageNum = " + startBno);
		startBno = (2 - 1) * 10;//2페이지
		System.out.println("쿼리변수(2page - 1) * perPageNum = " + startBno);
		startBno = (3 - 1) * 10;//3페이지
		System.out.println("쿼리변수(3page - 1) * perPageNum = " + startBno);
		
		//천장함수 사용법 1페이지, 2페이지, 3페이지
		int endPage = (int)(Math.ceil(1/10.0)*10);
		System.out.println("Math.ceil(1page/10.0)*10 = " + endPage);
		endPage = (int)(Math.ceil(2/10.0)*10);
		System.out.println("Math.ceil(2page/10.0)*10 = " + endPage);
		endPage = (int)(Math.ceil(3/10.0)*10);
		System.out.println("Math.ceil(3page/10.0)*10 = " + endPage);
		endPage = (int)(Math.ceil(11/10.0)*10);
		System.out.println("Math.ceil(11page/10.0)*10 = " + endPage);
		
		
		List<String> files = new ArrayList<>();
		files.add("sample1.jpg");
		files.add("sample2.jpg");
		files.add("sample3.jpg");
		String[] filenames = new String[files.size()];
		int cnt = 0;
		for (String fileName : files) {
			filenames[cnt++] = fileName;
		}
		System.out.println(filenames[0] + filenames[1] + filenames[2]);

		// SnowTire클래스 형 변수 snowTire 생성, new 키워드로 SnowTire() 매소드를 이용해서 snowTire인스턴스(메모리에
		// 로딩됨) 실행된 상태.
		SnowTire snowTire = new SnowTire(); // 생성자 메소드
		Tire tire = snowTire;
		tire.run();// 자식 클래스의 run()
		Tire tire2 = new Tire();
		tire2.run();// 부모 클래스의 run()
	}
}
/*
 * boolean run = true; int balance = 0; Scanner scanner = new
 * Scanner(System.in);
 * 
 * while(run) { System.out.println("----------------------");
 * System.out.println("1.예금|2.출금|3.잔고|4.종료");
 * System.out.println("----------------------");
 * System.out.print("위 번호를 입력해 주세요>"); int menuNum = scanner.nextInt();
 * 
 * switch(menuNum) { case 1: System.out.print("입금액을 입력하세요>"); balance = balance
 * + scanner.nextInt(); break; case 2: System.out.print("출금액을 입력하세요>"); balance
 * = balance - scanner.nextInt(); break; case 3:
 * System.out.print("잔고는 다음과 같습니다>"); System.out.println(balance + " 원 입니다.");
 * break; case 4: run = false; break; } System.out.println(); }
 * System.out.println("프로그램 while문이 종료되었습니다."); }
 */

// int sum = 0;
/*
 * for(int i=1;i<=100;i++) { sum = sum + i; }
 */
/*
 * int i = 1; while(i<=100) { sum = sum +i; i= i + 1 ; }
 * System.out.println("1부터 100까지의 합은: " + sum+"입니다."); }
 */
/* System.out.println("안녕하세요. Hello World 자바!"); */
/*
 * int score = 85; String result = (!(score>90))? "가":"나";
 * System.out.println(result);
 */
/*
 * int x = 10; int y = 5;
 * 
 * System.out.println((x>7)&& (y<=5)); System.out.println((x%3 == 2)||(y%2
 * !=1));
 */
