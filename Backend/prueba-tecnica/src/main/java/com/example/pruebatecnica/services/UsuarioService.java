package com.example.pruebatecnica.services;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;

public interface UsuarioService {
    public ResponseMessage getAll();

    public ResponseMessage getByNombreDpi(SearchDTO ch);

}
