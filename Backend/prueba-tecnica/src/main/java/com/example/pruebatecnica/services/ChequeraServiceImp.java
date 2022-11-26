package com.example.pruebatecnica.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.repositories.ChequeraRepository;

@Service
public class ChequeraServiceImp implements ChequeraService {

    @Autowired
    ResponseService responseService;

    @Autowired
    private ChequeraRepository chequeraRepository;

    @Override
    public ResponseMessage getListByUser() {
        try {
            return responseService.success(chequeraRepository.findAll(), "");
        } catch (Exception e) {
            return responseService.error("Error al listar usuarios");
        }
    }

}
