package com.botilleria.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.botilleria.entities.Imagen;

public interface IImagenRepository extends JpaRepository<Imagen,Integer>{

	Imagen findByIdImagen(int id);
	List<Imagen> findAll();
}

