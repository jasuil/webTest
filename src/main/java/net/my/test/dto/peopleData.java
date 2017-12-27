package net.my.test.dto;

import java.util.List;

public class peopleData {
	private String name;
	private String phone;
	private List<peopleData> list;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhone () {
		return this.phone;
	}

	public void setList(List<peopleData> list) {
		this.list = list;
	}

	public List<peopleData> getList() {
		return this.list;
	}
	
	@Override
	public String toString() {
		return "TestDto [name=" + name + ", phone=" + phone + ", list=" + list + ", getName()=" + getName()
				+ ", getPhone()=" + getPhone() + ", getList()=" + getList() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}