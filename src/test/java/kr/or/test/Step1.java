package kr.or.test;

public class Step1 {

	public static void main(String[] args) {
			System.out.println("-----------------------------");
			System.out.println("클래스를 사용하지 않는 내장변수 자료형 소스");
			// 필드 field(변수)
			String name;
			int age;
			String phoneNum;
			name="홍길동";
			age=45;
			phoneNum= "000-0000-0000";
			printMember(name, age, phoneNum);
			name="성춘향";
			age=99;
			phoneNum= "111-1111-1111";
			printMember(name, age, phoneNum);
			name="각시탈";
			age=35;
			phoneNum= "333-3333-3333";
			printMember(name, age, phoneNum);
			
			System.out.println("----------------------");
			System.out.println("클래스를 사용하지 않는 내장벼열 자요형 소스");
			//필드=field=배열변수
			String[] names = {"홍킬동","성춘향","각시탈"};
			System.out.println("현재등록된 회원은"+names.length+"명 입니다.");
			int[] ages = {45,99,35};
			String[] phoneNums = {"000-0000-0000","111-1111-1111","222-2222-2222"};
			printMember(names,ages,phoneNums);
	}
//같은이름의 매서드 인데 파라미터(매개변수)가 틀리게 만든 매서드를 오버로딩이라고 합니다
	private static void printMember(String[] names, int[] ages, String[] phoneNums) {
		for(int cnt=0;cnt<3;cnt++) {
			System.out.println(cnt+"번째참조한 이름은 "+names[cnt] +"님 입니다");
			System.out.println(cnt+"번째참조한 나이는 "+ages[cnt] +"몇살 입니다");
			System.out.println(cnt+"번째참조한 번호는 "+phoneNums[cnt] +"입니다");
		}
		
	}

	private static void printMember(String name, int age, String phoneNum) {
		System.out.println("이름은 " + name + "입니다");
		System.out.println("나이는 " + age + "살 입니다");
		System.out.println("전화번호는 " + phoneNum + "입니다");
		
	}


	}


