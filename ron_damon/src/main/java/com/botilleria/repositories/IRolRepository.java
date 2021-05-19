package com.botilleria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.botilleria.models.Rol;

@Repository
public interface IRolRepository extends JpaRepository<Rol,Integer>{

}
