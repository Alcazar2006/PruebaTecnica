package com.example.pruebatecnica.repositories;

import org.springframework.stereotype.Repository;
import com.example.pruebatecnica.models.UsuarioModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface UsuarioRepository extends JpaRepository<UsuarioModel, Long> {

}
