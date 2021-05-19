package com.botilleria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.botilleria.models.Usuario;

@Repository
public interface IUsuarioRepository extends JpaRepository<Usuario,Integer> {

}
