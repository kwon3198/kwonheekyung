package kr.or.test;

public class Step1 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	System.out.println("----------------------");
	System.out.println("클래스를 사용하지 않는 내장변수 자료형 소스");
	// 필드 field(변수)
	String name;
	int age;
	String phoneNum;
	
	name = "홍길동";
	age = 45;
	phoneNum = "000-0000-0000";
	//메서드의 매개변-인자-파라미터로 값 전
	printMember(name, age, phoneNum);
	name = "성춘향";
	age = 100;
	phoneNum = "111-1111-1111";
	//메서드의 매개변-인자-파라미터로 값 전달
	printMember(name, age, phoneNum);
	name = "각시탈";
	age = 3;
	phoneNum = "222-2222-2222";	
	//메서드의 매개변-인자-파라미터로 값 전
	printMember(name, age, phoneNum);
	
	System.out.println("------------------------------------");
	System.out.println("내장변수 배열자료형 사용");
	// 필드=field=배열변수
	String[] names = {"홍길동","성춘향","각시탈"};
	System.out.println("현재 등록된 회원은 " + names.length + " 명 입니다.");
	int[] ages = {45,100,3};
	String[] phoneNums = null;
	phoneNums = new String[] {"000-0000-0000","111-1111-1111","222-2222-2222"};
	printMember(names, ages, phoneNums);
	System.out.println("------------------------------------");
	
	}
// 같은 이름의 매소드인데 파라미터(매개변수)가 다르게 만든 매소드를 오버로딩이라고 함
	private static void printMember(String[] names, int[] ages, String[] phoneNums) {
		int cntLength = names.length;
		//배열은 값을 참조할 때 주소(index)를 사용하는데, 0번째 주소부터 시작
		for(int cnt=0; cnt<cntLength; cnt++) {
			System.out.println(cnt + "번째 참조한 이름은 " + names[cnt] + " 님입니다.");
			System.out.println(cnt + "번째 참조한 나이는 " + ages[cnt] + "세 입니다.");
			System.out.println(cnt + "번째 참조한 전화번호는 " + phoneNums[cnt] + " 입니다.");
			
		}
	}

	private static void printMember(String name, int age, String phoneNum) {
	System.out.println("이름은 " + name + "입니다.");
	System.out.println("나이는 " + age + "살 입니다.");
	System.out.println("전화번호는 " + phoneNum + "입니다.");
		
	}

}
