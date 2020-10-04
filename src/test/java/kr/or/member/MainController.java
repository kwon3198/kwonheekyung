package kr.or.member;

import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import org.apache.commons.net.ntp.NTPUDPClient;
import org.apache.commons.net.ntp.TimeInfo;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MainController {

	private static final String TIME_SERVER = "pool.ntp.org"; //static final은 상수에서 값을 재정의하지 않을 때 사용. 단 하나의 변수가 존재할 때 사용

	public static void main(String[] args) throws IOException { //main 메소드. 프로그램의 시작. main 메소드 없으면 프로그램을 단독으로 수행시킬 수 없음
		
		System.out.println("클래스형 변수-사용자 정의 자료형 소스");
		// 클래스 연습 : 사용자 정의 자료형 사용하기(아래)
		//MemberVO 클래스를 사용하기 위해 new연산자를 이용해 객체(instance) 생성
		MemberVO m1 = new MemberVO();
		m1.setName("양세정");
		m1.setAge(45);
		m1.setPhoneNum("000-0000-0000");
		MemberVO m2 = new MemberVO();
		m2.setName("양세정");
		m2.setAge(100);
		m2.setPhoneNum("111-1111-1111");
		MemberVO m3 = new MemberVO();
		m3.setName("양세정");
		m3.setAge(3);
		m3.setPhoneNum("222-2222-2222");
		/*System.out.println(m1.toString());
		System.out.println(m2.toString());
		System.out.println(m3.toString());*/
		MemberVO [] members = new MemberVO[3];
		//MemberVO 배열 클래스에 각각의 실행클래스(m1, m2, m3)의 자료를 넣어준다.
		members[0] = m1;
		members[1] = m2;
		members[2] = m3;
		MemberService ms = new MemberService();
		ms.printMembers(members);
		
		// MainControl 클래스에 아래 내용 추가하 후 에러 상황 처리하기를 이용해서 외부 라이브러리 사용방법 확인
		System.out.println("-서버타임 출력하기-");
		NTPUDPClient timeClient = new NTPUDPClient();
		timeClient.setDefaultTimeout(1000);
		try { //try-catch 자바예외처리. try 블록의 코드가 예외 없이 정상적으로 실행되면 catch블록의 코드는 실행되지 않음. 하지만 예외 발생 시 즉시 실행을 멈추고 catch 블록으로 이동하여 예외처리 코드를 실행.어떠한 예외가 발생하더라도 반드시 실행돼야하는 부분은 finally 구문을 사용함 하지만 생략가능.
			timeClient.open();
		} catch (SocketException e) {
			System.out.println("open에서 메서드 실행 오류");
			e.printStackTrace();
		}
		InetAddress address = InetAddress.getByName(TIME_SERVER);
	    TimeInfo timeInfo = timeClient.getTime(address);
	    //서버로부터 시간 가져오는 코드
	    long returnTime = timeInfo.getMessage().getTransmitTimeStamp().getTime();
	    Date date = new Date(returnTime);
	    LocalDateTime localDateTime = 
	            date.toInstant()
	            .atZone(ZoneId.systemDefault())
	            .toLocalDateTime();//date to LocalDateTime
	    
	    System.out.println("Server 시간: " + localDateTime);//서버 시간!
	    System.out.println("로컬 PC 시간: " + LocalDateTime.now());	
	}

}
