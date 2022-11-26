package com.example.pruebatecnica.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.services.ChequeraService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/chequera")
public class ChequeraController {

  @Autowired
  private ChequeraService chequeraService;

  @GetMapping(value = "/getListByUser")
  public ResponseEntity<ResponseMessage> getListByUser(@RequestParam String param) {
    return new ResponseEntity<>(chequeraService.getListByUser(), HttpStatus.OK);
  }
  /*
   * @GetMapping(value="/getChequeraByUser   ")
   * public ResponseEntity<ResponseMessage> getChequeras (@ModelAttribute CDTO
   * exp){
   * return new ResponseEntity<>(, HttpStatus.OK);
   * }
   */

}
