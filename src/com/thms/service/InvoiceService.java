package com.thms.service;

import java.util.List;

import com.thms.bean.Invoice;

public interface InvoiceService {

	public Invoice findInvoice(Integer id);

	public Invoice findInvoice(String name, Integer uid);

	public Invoice create(Invoice invoice);

	public Invoice update(Invoice invoice);

	public List<Invoice> findInvoices(Integer uid);

}
