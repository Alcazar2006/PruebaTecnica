package com.example.pruebatecnica.repositories;

import org.springframework.stereotype.Repository;
import com.example.pruebatecnica.models.ChequeraModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ChequeraRepository extends JpaRepository<ChequeraModel, Long> {

}
