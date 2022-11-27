package com.example.pruebatecnica.dto;

import java.io.Serializable;

public class SearchDTO implements Serializable {

    private String searchValue;
    private Long idUsuario;
    private Long idCuenta;
    private Long idChequera;
    private Integer idEstadoChequera;

    public SearchDTO() {
    }

    public String getSearchValue() {
        return searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Long getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(Long idCuenta) {
        this.idCuenta = idCuenta;
    }

    public Long getIdChequera() {
        return idChequera;
    }

    public void setIdChequera(Long idChequera) {
        this.idChequera = idChequera;
    }

    public Integer getIdEstadoChequera() {
        return idEstadoChequera;
    }

    public void setIdEstadoChequera(Integer idEstadoChequera) {
        this.idEstadoChequera = idEstadoChequera;
    }

}
