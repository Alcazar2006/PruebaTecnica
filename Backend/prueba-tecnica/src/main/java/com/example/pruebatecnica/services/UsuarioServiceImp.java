package com.example.pruebatecnica.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImp implements UsuarioService {

    @Autowired
    ResponseService responseService;

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Override
    public ResponseMessage getAll() {
        try {
            return responseService.success(usuarioRepository.findAll(), "");
        } catch (Exception e) {
            e.printStackTrace();
            return responseService.error("Error al listar usuarios");
        }
    }

}
