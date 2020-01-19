package polymorphism;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV {
	@Autowired //자동으로 메모리에 할당된 해당 객체를 찾아서 레퍼런스 변수에 할당해줌.
	//@Qualifier("apple") 의존성 주입될 객체를 직접 선택
	//@Resource(name="apple") Autowired는 타입으로 객체를 선택, 얘는 객체 이름으로 선택한다.
	private Speaker speaker;
	
	public void powerOn() {
		System.out.println("LG TV 전원 켠다.");	
	}

	public void powerOff() {
		System.out.println("LG TV 전원 끈다.");
	}

	public void volumeUp() {
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker.volumeDown();
	}

}
