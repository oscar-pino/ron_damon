package com.botilleria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.botilleria.entities.Producto;

public interface IProductoRepository extends JpaRepository<Producto,Integer>{
	
	
}

