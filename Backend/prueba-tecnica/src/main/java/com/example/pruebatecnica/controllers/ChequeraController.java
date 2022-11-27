package com.example.pruebatecnica.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;
import com.example.pruebatecnica.services.ChequeraService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@CrossOrigin
@RequestMapping("/chequera")
public class ChequeraController {

  @Autowired
  private ChequeraService chequeraService;

  @GetMapping(value = "/get")
  public ResponseEntity<ResponseMessage> getListByUser(@ModelAttribute SearchDTO ch) {
    return new ResponseEntity<>(chequeraService.getList(ch), HttpStatus.OK);
  }

  @PostMapping(value = "/add")
  public ResponseEntity<ResponseMessage> addChequera(@RequestBody SearchDTO ch) {
    return new ResponseEntity<>(chequeraService.addChequera(ch), HttpStatus.OK);
  }

  @PutMapping(value = "/editar")
  public ResponseEntity<ResponseMessage> editarChequera(@RequestBody SearchDTO ch) {
    return new ResponseEntity<>(chequeraService.editarChequera(ch), HttpStatus.OK);
  }

  @DeleteMapping(value = "/delete")
  public ResponseEntity<ResponseMessage> deleteChequera(@ModelAttribute SearchDTO ch) {
    return new ResponseEntity<>(chequeraService.deleteChequera(ch), HttpStatus.OK);
  }

}
