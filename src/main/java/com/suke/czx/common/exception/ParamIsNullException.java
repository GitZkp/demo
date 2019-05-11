package com.suke.czx.common.exception;
/**
 * 参数为空异常类
 *
 * @return
 */
@SuppressWarnings("serial")
public class ParamIsNullException extends RuntimeException{
	
	private final String parameterName;
    private final String parameterType;

    public ParamIsNullException(String parameterName, String parameterType) {
        super("");
        this.parameterName = parameterName;
        this.parameterType = parameterType;
    }

    @Override
    public String getMessage() {
        return "Required " + this.parameterType + " parameter \'" + this.parameterName + "\' must be not null !";
    }

    public final String getParameterName() {
        return this.parameterName;
    }

    public final String getParameterType() {
        return this.parameterType;
    }
}


