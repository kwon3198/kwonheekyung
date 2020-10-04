package kr.or.member;

public class MemberVO {  //자바 캡슐화=중요한 데이터를 보존,보호하는 것
	private String name; //private 변수는 같은 클래스에서만 접근 가능
	private int age;
	private String phoneNum;
	
	public String getName() { //getter는 Main 함수에서 인스턴스 필드에 접근해서 사용하는 함수. 초기화된 멤버 변수를 return리턴. 멤버변수가 어떤 값으로도 초기화되지 않았다면 null을 리턴
		return name;
	}
	public void setName(String name) { //setter는 Main 함수에서 인스턴스 필드에 접근해서 사용하는 함수. 매개변수로 멤버 변수를 초기화
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
}
