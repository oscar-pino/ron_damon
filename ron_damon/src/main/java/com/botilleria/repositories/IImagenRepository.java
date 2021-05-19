package com.botilleria.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.botilleria.models.Imagen;

@Repository
public interface IImagenRepository extends JpaRepository<Imagen,Integer>{

	Imagen findByIdImagen(int id);
	List<Imagen> findAll();

}
