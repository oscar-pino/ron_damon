package com.botilleria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.botilleria.entities.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario,Integer>{

}

