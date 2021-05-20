package com.botilleria.controllers;

import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.botilleria.entities.Imagen;
import com.botilleria.entities.Producto;
import com.botilleria.repositories.IImagenRepository;
import com.botilleria.repositories.IProductoRepository;

@Controller
public class HomeController {

	@Autowired
	private IProductoRepository pr;
	
	@Autowired
	private IImagenRepository ir;	
	
	@GetMapping("/")
	public String index(Model model) {	
			
			if(ir.count()==0){
				
				for(Imagen i : ingresarImagenes())
					ir.save(i);
			}
					
		
		return "index";
	}	
	
	@GetMapping("registrar")
	public String registrar(Model model) {	
		
		model.addAttribute("imagenes", ir.findAll());
		
		return "registrarProducto";		
		
	}
	
	@PostMapping("registrar")
	public String registrar(@Valid @ModelAttribute("producto") Producto pro, BindingResult br, Model model) {
		
		if(!br.hasErrors()) {
		pr.save(pro);
		model.addAttribute("productos", pr.findAll());		
		
			return "listarProductos";	
		}else {
			model.addAttribute("imagenes", ir.findAll());
			return "registrarProducto";
		}
	}	
	
	@GetMapping("listar")
	public String listar(Model model) {		
		
		
		
		model.addAttribute("productos", pr.findAll());		
		
		//model.addAttribute("comienzo", (contador>0)?false:true);
			return "listarProductos";
	}
	
	@GetMapping("contacto")
	public String contacto() {
		
		return "contacto";
	}
	
	@ModelAttribute("producto")
	public Producto getProducto() {
		
		return new Producto();
	}	
	
	
	
	@PostMapping("editar")
	public String editar(Model model, HttpServletRequest request){
		
		String captura = request.getParameter("ids");
		int id = Integer.parseInt(captura);
		
		if(pr.existsById(id)) {
							
			model.addAttribute("imagenes", ir.findAll());
			model.addAttribute("pro", pr.getOne(id));
		}
		
		return "modificarProducto";
	}
	
	@PostMapping("actualizar")
	public String actualizar(@ModelAttribute("producto") Producto pro, Model model) {
		
			if(pr.existsById(pro.getIdProducto()))		{		
				pr.save(pro);
			
			model.addAttribute("productos", pr.findAll());
			return "listarProductos";
			}else
				return "modificar";
		
	}
	
	@PostMapping("eliminar")
	public String eliminar(HttpServletRequest request, Model model) throws IOException {
		
		String captura = request.getParameter("ids");	
		
		String[] ids = captura.split(",");
		
		for(String id : ids)
			pr.deleteById(Integer.parseInt(id));		
		
		model.addAttribute("productos", pr.findAll()); 
		
		return "listarProductos";
		
	}	
	
	@PostMapping("volver")
	public String volver(Model model) {
		
		model.addAttribute("productos", pr.findAll());
		return "listarProductos";
	}
	
	@GetMapping("logout")
	public String salir() {
		
		return "index";
	}
	// métodos para llenar productos
	
private Imagen[] ingresarImagenes(){		
		
		Imagen[] imagenes = {
				
				new Imagen("tragos"),
				new Imagen("agua"),
				new Imagen("gaseosa"),
				new Imagen("jugo"),
				new Imagen("ron"),
				new Imagen("vino"),
				new Imagen("sprite"),
				new Imagen("fanta"),
				new Imagen("papaya")
				
		};
			
		return imagenes;
	}
	
	private int generaNumero(int min, int max){
		
		Random rd = new Random();
		
		return rd.nextInt(((max-min)+1)+min);
	}
	
	private GregorianCalendar getFecha() {
		
		int[] lista = new int[3];
		
		lista[0] = generaNumero(2000,2020);
		lista[1] = generaNumero(1,12);
		lista[2] = generaNumero(1,31);
		
		return new GregorianCalendar(lista[0],lista[1],lista[2]);
	}
	
	private Producto[] ingresarProductos(){		
				
		Producto[] productos = {
				//nombre,marca,stock,precio,date(año,mes,dia),imagen
				
				new Producto("cocacola","ccu",12,1200,getFecha().getGregorianChange(),ir.findAll().get(2)),				
				new Producto("fanta","ccu",12,1200,getFecha().getGregorianChange(),ir.findAll().get(7)),
				new Producto("sprite","ccu",12,1200,getFecha().getGregorianChange(),ir.findAll().get(6)),
				new Producto("cachantun","cachantun",12,1200,getFecha().getGregorianChange(),ir.findAll().get(1)),
				new Producto("vino","gato",15,1500,getFecha().getGregorianChange(),ir.findAll().get(5)),			
				new Producto("papaya","whatss",12,1200,getFecha().getGregorianChange(),ir.findAll().get(8)),
				new Producto("blackron","casillero",15,1500,getFecha().getGregorianChange(),ir.findAll().get(4))	
				
		}; 
		
		//for(int i=0;i<productos.length;i++)
		return productos;
	}
	
	@GetMapping("productosAutomaticos")
	public String automaticos(Model model) {		
		
	
		
		for(Producto p:ingresarProductos())
		pr.save(p); 
		
		model.addAttribute("productos", pr.findAll());
		
		
		//model.addAttribute("comienzo", false);
		
		return "listarProductos";
	}

}
