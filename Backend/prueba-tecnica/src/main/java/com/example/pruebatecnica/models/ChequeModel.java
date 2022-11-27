package com.example.pruebatecnica.models;

import java.time.LocalDateTime;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

@Entity
@Table(name = "CHEQUE")
public class ChequeModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private long idCheque;

    @Column
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm:ss", shape = Shape.STRING)
    private LocalDateTime fechaCobro;

    @Column
    private boolean cobro = false;

    // ################ FOREIGN KEYS###################
    @ManyToOne
    @JoinColumn(name = "idChequera", nullable = false)
    private ChequeraModel chequeraModel;

    public ChequeModel() {
    }

    public ChequeModel(long idCheque, Boolean cobro, ChequeraModel chequeraModel) {
        this.idCheque = idCheque;
        this.cobro = cobro;
        this.chequeraModel = chequeraModel;
    }

    public ChequeModel(ChequeraModel chequeraModel) {
        this.chequeraModel = chequeraModel;
    }

    public long getIdCheque() {
        return idCheque;
    }

    public void setIdCheque(long idCheque) {
        this.idCheque = idCheque;
    }

    public LocalDateTime getFechaCobro() {
        return fechaCobro;
    }

    public void setFechaCobro(LocalDateTime fechaCobro) {
        this.fechaCobro = fechaCobro;
    }

    public boolean isCobro() {
        return cobro;
    }

    public void setCobro(boolean cobro) {
        this.cobro = cobro;
    }

    public ChequeraModel getChequeraModel() {
        return chequeraModel;
    }

    public void setChequeraModel(ChequeraModel chequeraModel) {
        this.chequeraModel = chequeraModel;
    }

}
