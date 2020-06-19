package kr.or.member;

public class MemberVO {
		//private 객체 변수를 숨기는 기능
		private String name;
		private int age;
		private String phoneNum;

		@Override //매소드 재정의
		//return □□ : □□라는 함수를 호출한쪽으로 값을 돌려줌
		public String toString() {
			return "MemberVO클래스 [이름은" + name + ", 나이는" + age + ", 전화번호는=" + phoneNum + "]";
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

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

}
