package com.example.pruebatecnica.services;

import org.springframework.stereotype.Service;

import com.example.pruebatecnica.ResponseMessage;

@Service
public class ResponseService {

	public ResponseMessage success(Object ob) {
		return new ResponseMessage(ob, true, null);
	}

	public ResponseMessage success(Object ob, String msg) {
		return new ResponseMessage(ob, true, msg);
	}

	public ResponseMessage error(String msg) {
		return new ResponseMessage(null, false, msg);
	}
}
