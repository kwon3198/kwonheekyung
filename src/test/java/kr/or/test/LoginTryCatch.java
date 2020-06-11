package kr.or.test;

class NotExistIDException extends Exception {
//아이디가 존재하지 않을때 예외사항 처리 내용	
	public NotExistIDException() {}
	public NotExistIDException(String message) {
		super(message);
	}
}
class WrongPasswordException extends Exception {
	//패스워드 입력 오류에 대한 예외사항 처리 내용
	public WrongPasswordException() {}
	public WrongPasswordException(String message) {
		super(message);
	}
}
public class LoginTryCatch {

	public static void main(String[] args) {
	try {
	login("white","12345");
	login("blue","54321");
	}
	public static void login(String id, String password)
	//id가 'blue'가 아니라면 NotEXistIDException 발생시킴
	if(!id.equals("blue")) {
		throw new NotExistIDException("아이디가 존재하지 않습니다");
	}
	//password가"12345"가 아니라면WrongPasswordException 방생시킴
	if(!password.equals("12345")) {
		throw new WrongPasswordException("패스워드가 존재하지 않습니다");
	}

}

