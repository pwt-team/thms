package com.thms.bean;

public class AjaxMessages {
	
	private boolean isSuccess;
	private Object data;
	private String errorMsg;
	
	public AjaxMessages () {
		super ();
	}
	
	
	public AjaxMessages(boolean isSuccess, Object data, String errorMsg) {
		super();
		this.isSuccess = isSuccess;
		this.data = data;
		this.errorMsg = errorMsg;
	}

	public AjaxMessages(boolean isSuccess, String errorMsg) {
		super();
		this.isSuccess = isSuccess;
		this.errorMsg = errorMsg;
	}

	

	public AjaxMessages(boolean isSuccess, Object data) {
		super();
		this.isSuccess = isSuccess;
		this.data = data;
	}


	public boolean isSuccess() {
		return isSuccess;
	}
	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	
	

}
