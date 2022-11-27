package com.example.pruebatecnica.models;

import javax.persistence.*;

@Entity
@Table(name = "ESTADO_CHEQUERA")
public class EstadoChequeraModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int idEstado;

    @Column(nullable = false)
    private String detalle;

    public EstadoChequeraModel() {
    }

    public EstadoChequeraModel(int idEstado) {
        this.idEstado = idEstado;
    }

    public EstadoChequeraModel(int idEstado, String detalle) {
        this.idEstado = idEstado;
        this.detalle = detalle;
    }

    public long getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

}
