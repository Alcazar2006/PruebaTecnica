package com.example.pruebatecnica.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;
import com.example.pruebatecnica.services.UsuarioService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/usuario")
@CrossOrigin
public class UsuarioController {

  @Autowired
  private UsuarioService usuarioService;

  @GetMapping(value = "/getByNombreDpi")
  public ResponseEntity<ResponseMessage> getByNombreDpi(SearchDTO ch) {
    return new ResponseEntity<>(usuarioService.getByNombreDpi(ch), HttpStatus.OK);
  }

  @GetMapping(value = "/getAll")
  public ResponseEntity<ResponseMessage> getListByUser() {
    return new ResponseEntity<>(usuarioService.getAll(), HttpStatus.OK);
  }

}
