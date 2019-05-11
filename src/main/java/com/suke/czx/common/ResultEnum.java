package com.suke.czx.common;
/**
 * 全局结果枚举
 * @author Administrator
 *
 */
public enum ResultEnum {
	
	SUCCESS(true,200,"成功"),
	FAIL(false,400,"请求失败");
	
	
	
	
	private  boolean ok;
	private int code;
	private String msg;
	
	
	public String getMsg()
    {
        return this.msg;
    }
    public int getCode() {
      return this.code;
    }
    public boolean getOk() {
    	return this.ok;
    }

	
	 private  ResultEnum(boolean ok, int code, String msg ) {
	        this.ok = ok;
	        this.code = code;
	        this.msg = msg;
	    }
	 


}
