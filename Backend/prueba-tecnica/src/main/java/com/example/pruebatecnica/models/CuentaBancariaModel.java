package com.example.pruebatecnica.models;

import javax.persistence.*;

@Entity
@Table(name = "CUENTA_BANCARIA")
public class CuentaBancariaModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private long idCuenta;

    // ################ FOREIGN KEYS###################
    @ManyToOne
    @JoinColumn(name = "idTipoCuenta", nullable = false, insertable = false, updatable = false)
    private TipoCuentaModel tipoCuentaModel;

    @ManyToOne
    @JoinColumn(name = "idUsuario", nullable = false, insertable = false, updatable = false)
    private UsuarioModel usuarioModel;

    public CuentaBancariaModel() {
    }

    public CuentaBancariaModel(long idCuenta) {
        this.idCuenta = idCuenta;
    }

    public CuentaBancariaModel(long idCuenta, TipoCuentaModel tipoCuentaModel, UsuarioModel usuarioModel) {
        this.idCuenta = idCuenta;
        this.tipoCuentaModel = tipoCuentaModel;
        this.usuarioModel = usuarioModel;
    }

    public long getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(long idCuenta) {
        this.idCuenta = idCuenta;
    }

    public TipoCuentaModel getTipoCuentaModel() {
        return tipoCuentaModel;
    }

    public void setTipoCuentaModel(TipoCuentaModel tipoCuentaModel) {
        this.tipoCuentaModel = tipoCuentaModel;
    }

    public UsuarioModel getUsuarioModel() {
        return usuarioModel;
    }

    public void setUsuarioModel(UsuarioModel usuarioModel) {
        this.usuarioModel = usuarioModel;
    }

}
