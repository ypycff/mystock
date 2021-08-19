package com.group7.stock.enums;

import lombok.Getter;

/**
 * @author : LuWei
 */

@Getter
public enum ResultEnum {

    STOCK_NOT_EXIST(0, "STOCK NOT EXIST");

    private Integer code;

    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
