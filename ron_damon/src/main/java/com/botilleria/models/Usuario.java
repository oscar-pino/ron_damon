package com.botilleria.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Usuario {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable=false)
	private int idUsuario;
	
	@Column(nullable=false, length=20)
	//@NotBlank(message = "El nombre, es obligatorio")
	private String user;
	
	@Column(nullable=false)
	//@NotBlank(message = "El password, es obligatorio")
	private String password;
	
	@ManyToOne
	private Rol rol;
	
	public Usuario() {
	}
	
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", user=" + user + ", password=" + password + ", rol=" + rol + "]";
	}

}
