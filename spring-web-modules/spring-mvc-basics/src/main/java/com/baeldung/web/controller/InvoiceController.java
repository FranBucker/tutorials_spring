package com.baeldung.web.controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.baeldung.model.Invoice;

@Controller
public class InvoiceController {

    Map<Long, Invoice> invoiceMap = new HashMap<>();

    @ModelAttribute("invoices")
    public void initInvoices() {
        invoiceMap.put(1L, new Invoice(1L,"Folios",50,5,"01/09/2024"));
        invoiceMap.put(2L, new Invoice(2L,"Toner",80,10,"01/09/2024"));
        invoiceMap.put(3L, new Invoice(3L,"Impresora",250,8,"01/09/2024"));
    }

    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("invoice", "invoice", new Invoice());
    }

    @RequestMapping(value = "/addInvoice", method = RequestMethod.POST)
    public String submit(@ModelAttribute("invoice") final Invoice invoice, final BindingResult result, final ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        double cantidad = invoice.getCantidad();
        int porcentaje = invoice.getPorcentajeRetencion();
        double diferenciaPorcentajeCien = 100 - porcentaje;
        double divisorParaCalculo = diferenciaPorcentajeCien/100;
        double cantidadSinRetencion = cantidad * divisorParaCalculo;
        DecimalFormat formatoDecimal = new DecimalFormat("#.00");
        String formateoCantidadSinRetencion = formatoDecimal.format(cantidadSinRetencion);
        model.addAttribute("concepto", invoice.getConcepto());
        model.addAttribute("cantidad", invoice.getCantidad());
        model.addAttribute("porcentajeRetencion", invoice.getPorcentajeRetencion());
        model.addAttribute("fechaFactura", invoice.getFechaFactura());
        model.addAttribute("idFactura", invoice.getIdFactura());
        model.addAttribute("formateoCantidadSinRetencion", formateoCantidadSinRetencion);


        invoiceMap.put(invoice.getIdFactura(), invoice);

        return "invoiceView";
    }


    @ModelAttribute
    public void addAttributes(final Model model) {
        model.addAttribute("msg", "Resumen de la factura");
    }
}

