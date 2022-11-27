package com.example.pruebatecnica.services;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;

public interface ChequeraService {
    public ResponseMessage getListByUser();

    public ResponseMessage getList(SearchDTO ch);

    public ResponseMessage addChequera(SearchDTO ch);

    public ResponseMessage editarChequera(SearchDTO ch);

    public ResponseMessage deleteChequera(SearchDTO ch);
}
