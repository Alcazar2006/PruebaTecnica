package com.example.pruebatecnica.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;
import com.example.pruebatecnica.services.CuentaService;
import com.example.pruebatecnica.services.UsuarioService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/cuenta")
@CrossOrigin
public class CuentaController {

  @Autowired
  private CuentaService cuentaService;

  @GetMapping(value = "/getByUser")
  public ResponseEntity<ResponseMessage> getByUser(SearchDTO ch) {
    return new ResponseEntity<>(cuentaService.getByUser(ch), HttpStatus.OK);
  }

}
