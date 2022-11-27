package com.example.pruebatecnica.repositories;

import org.springframework.stereotype.Repository;
import com.example.pruebatecnica.models.ChequeModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ChequeRepository extends JpaRepository<ChequeModel, Long> {

}
