package polymorphism;

import org.springframework.stereotype.Component;


public class SonySpeaker implements Speaker {
	public SonySpeaker() {
		System.out.println("SonySpeaker 객체 생성");
	}
	public void volumeUp() {
		System.out.println("Sony Speaker 스피커 소리 상승");
	}
	public void volumeDown() {
		System.out.println("Sony Speaker스피커 소리 내림");
	}
}
