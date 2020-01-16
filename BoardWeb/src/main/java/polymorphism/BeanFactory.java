package polymorphism;
/*
 * BeanFactory를 이용한 디자인패턴. 
 * 원하는 이름에 해당하는 객체를 TVUser에게 리턴한다.
 * 즉, 다형성을 이용한 방식에서는 인터페이스를 통해 받는건데
 * BeanFactory를 이용하면, BeanFactory가 인터페이스를 통하여 객체를 생성하여
 * TVUser Class에게 해당하는 객체를 리턴한다.
 * 이렇게 하면, TVUser class의 코드를 변경하지 않고 추가적인 다른 종류의 객체를
 * 얻어낼 수 있다. 느슨한 결합도를 이루게 해주는 것. 
 */
public class BeanFactory {
	public Object getBean(String beanName) {
		if(beanName.equals("samsung")) {
			return new SamsungTV();
		} else if(beanName.equals("lg")) {
			return new LgTV();
		}
		return null;
	}
}
