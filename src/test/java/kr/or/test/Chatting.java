package kr.or.test;

public class Chatting {
	public static void main(String[] args) {
		Chatting chat = new Chatting();
		chat.startChat("user2");
		// startChat("user2");
	}

	void startChat(String chatID) {
		final String nickName = chatID;
		Chat chat = new Chat() {
			@Override
			public void start() {
				while (true) {
					String inputData = "안녕하세요";
					String message = "[" + nickName + "]님" + inputData;
					sendMessage(message);
					break;
				} // end while
			}// end start()
		};// end chat()
		chat.start();
	}// end startCat()

	class Chat {
		void start() {}
		void sendMessage(String message) {
				System.out.println(message);
	}
}
}
