package com.thms.service;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thms.bean.Invoice;
import com.thms.dao.InvoiceDao;

@Service
public class InvoiceServiceImpl implements InvoiceService {
	
	@Autowired
	public InvoiceDao invoiceDao;

	@Override
	public Invoice findInvoice(Integer id) {
		if(id==null) return null;
		return invoiceDao.findInvoice(id);
	}

	@Override
	public Invoice findInvoice(String name,Integer uid) {
		if(StringUtils.isEmpty(name) && uid != null ) return null;
		return invoiceDao.findInvoice(name,uid);
	}

	@Override
	public Invoice create(Invoice invoice) {
		if(invoice == null) return null;
		return invoiceDao.save(invoice);
	}

	@Override
	public Invoice update(Invoice invoice) {
		if(invoice == null) return null;
		return invoiceDao.update(invoice);
	}

	@Override
	public List<Invoice> findInvoices(Integer uid) {
		if(uid == null) return null;
		return invoiceDao.findInvoices(uid);
	}

}
