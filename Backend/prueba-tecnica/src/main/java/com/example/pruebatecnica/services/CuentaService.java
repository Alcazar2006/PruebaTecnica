package com.example.pruebatecnica.services;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;

public interface CuentaService {

    public ResponseMessage getByUser(SearchDTO ch);

}
