package com.movie.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="booking")
public class Booking {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String CustName;
	private String email;
	private String address;
	private String city;
	private String state;
	private Integer pincode;
	private String cardtype;
	private String Moviename;
	
	private String nameoncard;

	
	
	
	
	public String getMoviename() {
		return Moviename;
	}
	public void setMoviename(String moviename) {
		Moviename = moviename;
	}
	public String getCardtype() {
		return cardtype;
	}
	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCustName() {
		return CustName;
	}
	public void setCustName(String custName) {
		CustName = custName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}

	
	public String getNameoncard() {
		return nameoncard;
	}
	public void setNameoncard(String nameoncard) {
		this.nameoncard = nameoncard;
	}

	
	
	
}

