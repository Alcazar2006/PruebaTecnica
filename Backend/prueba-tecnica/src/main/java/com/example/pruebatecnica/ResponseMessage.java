package com.example.pruebatecnica;

public class ResponseMessage {
    private Object data;
    private boolean valid;
    private String msg;

    public ResponseMessage(Object data, boolean valid, String msg) {
        this.data = data;
        this.valid = valid;
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
