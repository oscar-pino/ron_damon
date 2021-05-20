package com.botilleria.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Imagen {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idImagen;	
	
	private String ruta; 
	
	private String nombre;
	
	public Imagen() {
		
		ruta="/resources/img/";
	}
	
	public Imagen(String nombre) {
		
		this.nombre = nombre;
		ruta="/resources/img/"+nombre;
	}

	public int getIdImagen() {
		return idImagen;
	}

	public void setIdImagen(int idImagen) {
		this.idImagen = idImagen;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getRuta() {
		return ruta;
	}

	@Override
	public String toString() {
		return "Imagen [idImagen=" + idImagen + ", ruta=" + ruta + ", nombre=" + nombre + "]";
	}

	
}

