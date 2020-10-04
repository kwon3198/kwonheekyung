package kr.or.test;

class MovieThread extends Thread {
	@Override
	public void run() {
		for (int cnt = 0; cnt < 3; cnt++) {
			System.out.println("동영상을 재생합니다.");
		}
		while (true) {
			System.out.println("동영상을 무한 재생합니다.");
			/*try {
				Thread.sleep(1);
			} catch (InterruptedException e) {
				break;
			}*/
			//스레드:실행중인 클래스가 main메소드에서 interrupt()가 호출되었을 때
			if(Thread.interrupted()) {	//interrupted()는 인터럽트 시킨 이벤트
				System.out.println("인터럽트가 발생 되었습니다. 반복문을 종료합니다.");
				break;//while문 빠져나가기
			}
		}
	}
}


class MusicRunnable implements Runnable {
	@Override
	public void run() {
		for (int cnt = 0; cnt < 3; cnt++) {
			System.out.println("음악을 재생합니다.");
		}
	}
}

public class ThreadUser {

	public static void main(String[] args) {
		Thread threadMovie = new MovieThread();// 초기값을 MovieThread 클래스에서 가져옴
		threadMovie.setDaemon(true);
		threadMovie.start();
		// main() 스레드에서 1초 후 threadMovie를 종료하는 코드
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
		}
		threadMovie.interrupt();//무비스레드를 중지하겠다는 메소드 실행

		Thread threadMusic = new Thread(new MusicRunnable());
		threadMusic.start();
	}

}

