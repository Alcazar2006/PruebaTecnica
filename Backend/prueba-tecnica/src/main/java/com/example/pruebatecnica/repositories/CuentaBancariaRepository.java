package com.example.pruebatecnica.repositories;

import org.springframework.stereotype.Repository;

import com.example.pruebatecnica.models.CuentaBancariaModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface CuentaBancariaRepository extends JpaRepository<CuentaBancariaModel, Long> {

    CuentaBancariaModel[] findAllByUsuarioModelIdUsuario(Long idUsuario);

}
