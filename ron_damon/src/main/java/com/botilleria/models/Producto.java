package com.botilleria.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.istack.NotNull;

@Entity
public class Producto {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="producto_id", nullable=false)
	private int idProducto;
	
	@Column(nullable=false, length=20)
	@Size(min = 3,max = 20,message = " *debe ingresar nombre de producto")
	private String nombre;
	
	@Column(nullable=false, length=20)
	@Size(min = 3,max = 20,message = " *debe ingresar marca de producto")
	private String marca;
	
	@Min(value = 0, message = " *debe ingresar solo valores positivos")
	private int stock;
	
	@Min(value = 1000, message = " *el valor minimo del producto es 1000")
	private int precio;
	
	@NotNull()
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(nullable = false)
	@Past(message = " *la fecha debe ser anterior, a la fecha actual")
	private Date fechaIngreso;	
	
	@ManyToOne
	@NotNull()
	private Imagen imagen;
	
	public Producto() {
		
		this.fechaIngreso=new Date();
	}	
	
	public Producto(String nombre, String marca, int stock, int precio, Date fechaIngreso, Imagen imagen) {
		
		this.nombre = nombre;
		this.marca = marca;
		this.stock = stock;
		this.precio = precio;
		this.fechaIngreso = fechaIngreso;
		this.imagen = imagen;
	}



	public int getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public Date getFechaIngreso() {
		return fechaIngreso;
	}
	public void setFechaIngreso(Date fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}
	public Imagen getImagen() {
		return imagen;
	}
	public void setImagen(Imagen imagen) {
		this.imagen = imagen;
	}

	@Override
	public String toString() {
		return "Producto [idProducto=" + idProducto + ", nombre=" + nombre + ", marca=" + marca + ", stock=" + stock
				+ ", precio=" + precio + ", fechaIngreso=" + fechaIngreso + ", imagen=" + imagen + "]";
	}	

}
