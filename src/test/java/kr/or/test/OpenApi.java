package kr.or.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class OpenApi {

	// 외부연계 매서드
	public static void serviceApi() {
		BufferedReader br = null;// HRD넷에서 전송받은 데이터를 일시저장하는 저수지와 같은 역활
		String urlstr = "http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey="
				+ "rqwQSHfGcoD1ya5s70oLiB8D35bpt0QG&pageNum=1&pageSize=10&srchTraStDt=20200501&srchTraEndDt="
				+ "20201231&outType=1&sort=DESC&sortCol=TR_STT_DT&crseTracseSe=C0055&srchTraArea1=44";
		try {
			// URL 생성
			URL url = new URL(urlstr);
			// openConnection 메소드를 호출 하고 이를 urlconnection에 저장
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			// 요청방식 GET이니 URL(웹 서버)로부터 리소스를 받아옴
			urlconnection.setRequestMethod("GET");
			// BufferedReader 객체 생성, InputStreamReader통해 주어진 바이트스트림 ->문자스트림으로 변경
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "euc-kr"));
			String result = "";
			String line;

			while ((line = br.readLine()) != null) {
				// readLine : 자바 파일 내용 한 줄씩 읽어 들이기
				result = result + line + "\n";
				// 1부터 100까지 더하는 로직과 같음
			}
			// System.out.println(result);
			String result_xmlUtils = XmlUtils.formatXml(result);
			System.out.println(result_xmlUtils);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
		// 콘솔화면에 현재 PC시간을 표시
		Calendar cal = Calendar.getInstance();
		System.out.println(cal.getTime());
	}

	public static void main(String[] args) {
		// 실행간격 지정 10초
		int sleepSec = 10;
		// 주기적인 작업 위한 코딩 exec 실행가능한 클래스만듬
		final ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);
		exec.scheduleAtFixedRate(new Runnable() {
			public void run() {
				serviceApi();
			}
		}, 0, sleepSec, TimeUnit.SECONDS);
		serviceApi();

	}

}
