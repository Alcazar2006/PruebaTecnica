package com.example.pruebatecnica.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.pruebatecnica.ResponseMessage;
import com.example.pruebatecnica.dto.SearchDTO;
import com.example.pruebatecnica.models.ChequeModel;
import com.example.pruebatecnica.models.ChequeraModel;
import com.example.pruebatecnica.models.CuentaBancariaModel;
import com.example.pruebatecnica.models.EstadoChequeraModel;
import com.example.pruebatecnica.repositories.ChequeRepository;
import com.example.pruebatecnica.repositories.ChequeraRepository;

@Service
public class ChequeraServiceImp implements ChequeraService {

    @Autowired
    ResponseService responseService;

    @Autowired
    private ChequeraRepository chequeraRepository;

    @Autowired
    private ChequeRepository chequeRepository;

    @Override
    public ResponseMessage getList(SearchDTO ch) {
        try {
            System.out.println(ch.getSearchValue() + "__");
            return responseService.success(chequeraRepository.findAll(), "");
        } catch (Exception e) {
            return responseService.error("Error al listar chequera");
        }
    }

    @Override
    public ResponseMessage getListByUser() {
        try {
            return responseService.success(chequeraRepository.findAll(), "");
        } catch (Exception e) {
            return responseService.error("Error al listar usuarios");
        }
    }

    @Override
    public ResponseMessage addChequera(SearchDTO ch) {

        try {

            ChequeraModel model = new ChequeraModel();
            model.setCuentaBancariaModel(new CuentaBancariaModel(ch.getIdCuenta()));
            model.setEstadoChequeraModel(new EstadoChequeraModel(1));

            ChequeraModel resultModel = chequeraRepository.save(model);

            for (int i = 0; i < 15; i++) {
                chequeRepository.save(new ChequeModel(resultModel));
            }
            return responseService.success("Creado", "");
        } catch (Exception e) {
            return responseService.error("Error al agregar chequera");
        }

    }

    @Override
    public ResponseMessage editarChequera(SearchDTO ch) {

        try {

            Optional<ChequeraModel> modelOp = chequeraRepository.findById(ch.getIdChequera());

            if (modelOp.isPresent()) {
                ChequeraModel model = modelOp.get();
                model.setEstadoChequeraModel(new EstadoChequeraModel(ch.getIdEstadoChequera()));
                return responseService.success(chequeraRepository.save(model), "");
            }
            return responseService.error("Chequera no encontrada");

        } catch (Exception e) {
            return responseService.error("Error al agregar chequera");
        }

    }

    @Override
    public ResponseMessage deleteChequera(SearchDTO ch) {

        try {

            Optional<ChequeraModel> modelOp = chequeraRepository.findById(ch.getIdChequera());

            if (modelOp.isPresent()) {
                ChequeraModel model = modelOp.get();
                model.setEstadoChequeraModel(new EstadoChequeraModel(3));
                return responseService.success(chequeraRepository.save(model), "");
            }
            return responseService.error("Chequera no encontrada");

        } catch (Exception e) {
            return responseService.error("Error al agregar chequera");
        }

    }

}
