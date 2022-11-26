package com.example.pruebatecnica.models;

import java.time.LocalDateTime;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

@Entity
@Table(name = "CHEQUERA")
public class ChequeraModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private long idChequera;

    @Column(columnDefinition = "datetime DEFAULT(getdate())", insertable = false, updatable = false, nullable = false)
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm:ss", shape = Shape.STRING)
    private LocalDateTime fechaCreacion;

    // ################ FOREIGN KEYS###################
    @ManyToOne
    @JoinColumn(name = "idEstadoChequera", nullable = false)
    private EstadoChequeraModel estadoChequeraModel;

    @ManyToOne
    @JoinColumn(name = "idCuenta", nullable = false)
    private CuentaBancariaModel cuentaBancariaModel;

    public ChequeraModel() {
    }

    public ChequeraModel(long idChequera, EstadoChequeraModel estadoChequeraModel,
            CuentaBancariaModel cuentaBancariaModel) {
        this.idChequera = idChequera;
        this.estadoChequeraModel = estadoChequeraModel;
        this.cuentaBancariaModel = cuentaBancariaModel;
    }

    public long getIdChequera() {
        return idChequera;
    }

    public void setIdChequera(long idChequera) {
        this.idChequera = idChequera;
    }

    public LocalDateTime getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(LocalDateTime fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public EstadoChequeraModel getEstadoChequeraModel() {
        return estadoChequeraModel;
    }

    public void setEstadoChequeraModel(EstadoChequeraModel estadoChequeraModel) {
        this.estadoChequeraModel = estadoChequeraModel;
    }

    public CuentaBancariaModel getCuentaBancariaModel() {
        return cuentaBancariaModel;
    }

    public void setCuentaBancariaModel(CuentaBancariaModel cuentaBancariaModel) {
        this.cuentaBancariaModel = cuentaBancariaModel;
    }

}
