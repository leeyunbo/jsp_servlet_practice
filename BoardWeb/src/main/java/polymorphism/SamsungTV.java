package polymorphism;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

public class SamsungTV implements TV {	

	private Speaker speaker;
	private int price;
	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}
	
	public void setSpeaker(Speaker speaker) {
		System.out.println("setSpeaker() 호출");
		this.speaker = speaker;
	}
	public void setPrice(int price) {
		System.out.println("setPrice() 호출");
		this.price = price;
	}
	
	
	/*public SamsungTV(Speaker speaker) { 이부분이 생성자 인젝션 방법
		System.out.println("SamsungTV 객체(2) 생성"); 
		this.speaker = speaker;
	}
	public SamsungTV(Speaker speaker, int price) {
		System.out.println("SamsungTV 객체(3) 생성");
		this.speaker = speaker;
		this.price = price;
	}*/
	
	
	
	
	public void initMethod() {
		System.out.println("객체 초기화 작업 처리..");
	}
	public void destoryMethod() {
		System.out.println("객체 삭제 전에 처리할 로직 처리...");
	}
	public void powerOn() {
		System.out.println("SamsungTV 전원키다. (가격 :" + price + ")");
	}
	public void powerOff() {
		System.out.println("SamsungTV 전원끄다.");
	}
	public void volumeUp() {
		speaker.volumeUp();
	}
	public void volumeDown() {
		speaker.volumeDown();
	}
}
