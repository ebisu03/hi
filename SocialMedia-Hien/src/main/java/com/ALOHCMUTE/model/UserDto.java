package com.ALOHCMUTE.model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto implements Serializable {


	@SuppressWarnings("unused")
	private String email;
    @SuppressWarnings("unused")
	private String userName;
    @SuppressWarnings("unused")
	private String password;
    @SuppressWarnings("unused")
	private String CheckPass;


	public UserDto(String email, String userName, String password) {
        this.email = email;
        this.userName = userName;
        this.password = password;
    }


	public UserDto() {
		// TODO Auto-generated constructor stub
	}


	public String getUserName() {
		// TODO Auto-generated method stub
		return null;
	}


	public String getEmail() {
		// TODO Auto-generated method stub
		return null;
	}


	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}


}
