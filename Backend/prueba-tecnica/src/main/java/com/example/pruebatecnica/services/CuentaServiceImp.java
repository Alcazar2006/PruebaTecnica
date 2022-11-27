package com.example.pruebatecnica.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;
import com.example.pruebatecnica.repositories.CuentaBancariaRepository;

@Service
public class CuentaServiceImp implements CuentaService {

    @Autowired
    ResponseService responseService;

    @Autowired
    private CuentaBancariaRepository cuentaRepository;

    @Override
    public ResponseMessage getByUser(SearchDTO ch) {
        try {
            if (ch.getIdUsuario() == null)
                return responseService.success(cuentaRepository.findAll(), "");
            else
                return responseService.success(
                        cuentaRepository.findAllByUsuarioModelIdUsuario(ch.getIdUsuario()),
                        "");
        } catch (Exception e) {
            e.printStackTrace();
            return responseService.error("Error al listar usuarios");
        }
    }

}
