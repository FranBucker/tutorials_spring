package com.baeldung.model;

import javax.xml.bind.annotation.XmlRootElement;
import java.text.DateFormat;

@XmlRootElement
public class Invoice {

    private long idFactura;
    private String concepto;
    private double cantidad;
    private int porcentajeRetencion;
    private String fechaFactura;

    public Invoice() {
        super();
    }

    public Invoice(final long idFactura, final String concepto, final double cantidad, final int porcentajeRetencion, final String fechaFactura) {
        this.idFactura = idFactura;
        this.concepto = concepto;
        this.cantidad = cantidad;
        this.porcentajeRetencion = porcentajeRetencion;
        this.fechaFactura = fechaFactura;
    }

    public String getConcepto() {
        return concepto;
    }

    public void setConcepto(final String concepto) {
        this.concepto = concepto;
    }

    public long getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(final long idFactura) {
        this.idFactura = idFactura;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(final double cantidad) {
        this.cantidad = cantidad;
    }

    public int getPorcentajeRetencion() {
        return porcentajeRetencion;
    }

    public void setPorcentajeRetencion(final int porcentajeRetencion) { this.porcentajeRetencion = porcentajeRetencion; }

    public String getFechaFactura() {
        return fechaFactura;
    }

    public void setFechaFactura(final String fechaFactura) {
        this.fechaFactura = fechaFactura;
    }

    @Override
    public String toString() {
        return "Invoice [idFactura=" + idFactura + ", concepto=" + concepto + ", cantidad=" + cantidad + ", porcentajeRetencion=" + porcentajeRetencion + ", fechaFactura=" + fechaFactura + "]";
    }

}

