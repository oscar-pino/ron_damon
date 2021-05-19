package com.botilleria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.botilleria.models.Producto;

@Repository
public interface IProductoRepository extends JpaRepository<Producto,Integer>{

}
