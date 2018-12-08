package com.cauchy.domain;
/**
 * javaBean 必须要为成员提供get set方法，两者之中只提供一个也是可以的，
 * 必须要有一个默认构造器，一般对于具有get set方法的成员变量，称之为属性
 * 其实就算一个属性都没有，只有get/set方法也是可以的。
 * @author Cauchy
 *
 */
public class Person {
	private String name;
	private int age;
	private String gender;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", gender=" + gender + "]";
	}
	
}
