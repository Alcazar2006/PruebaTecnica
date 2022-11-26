package com.example.pruebatecnica.models;

import javax.persistence.*;

@Entity
@Table(name = "TIPO_CUENTA")
public class TipoCuentaModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int idTipoCuenta;

    @Column(nullable = false)
    private String detalle;

    public TipoCuentaModel() {
    }

    public TipoCuentaModel(int idTipoCuenta, String detalle) {
        this.idTipoCuenta = idTipoCuenta;
        this.detalle = detalle;
    }

    public int getIdTipoCuenta() {
        return idTipoCuenta;
    }

    public void setIdTipoCuenta(int idTipoCuenta) {
        this.idTipoCuenta = idTipoCuenta;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

}
