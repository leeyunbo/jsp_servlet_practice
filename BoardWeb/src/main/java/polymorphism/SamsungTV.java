package polymorphism;

public class SamsungTV implements TV {	
	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}
	public void initMethod() {
		System.out.println("객체 초기화 작업 처리..");
	}
	public void destoryMethod() {
		System.out.println("객체 삭제 전에 처리할 로직 처리...");
	}
	public void powerOn() {
		System.out.println("SamsungTV 전원키다.");
	}
	public void powerOff() {
		System.out.println("SamsungTV 전원끄다.");
	}
	public void volumeUp() {
		System.out.println("SamsungTV 소리 올리다.");
	}
	public void volumeDown() {
		System.out.println("SamsungTV 소리 내리다.");
	}
}