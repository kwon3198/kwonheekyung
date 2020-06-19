package kr.or.test;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.apache.log4j.Logger;

public class Log4jTest {
	//logger 레벨 : debug < info < warn < error < fatal 
	private Logger log = Logger.getLogger(Log4jTest.class);
	public void test() {
		MemberVO memberVO = new MemberVO();
		memberVO.setName("홍길동");
		memberVO.setAge(24);
		try {
			InetAddress local = InetAddress.getLocalHost();
			String ip = local.getHostAddress();
			log.info("test라는 매서드를 사용한 PC아이피는 : "+ ip);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		log.debug("디버그!!" + memberVO);
		log.info("인포!!");
		log.warn("워닝!");
		log.error("에러!!");
		log.fatal("파탈에러!!");
	}
	public static void main(String[] args) {
		new Log4jTest().test();

	

}
}
