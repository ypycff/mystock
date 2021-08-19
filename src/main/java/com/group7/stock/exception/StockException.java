package com.group7.stock.exception;

import com.group7.stock.enums.ResultEnum;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @author : LuWei
 */

@ResponseStatus(value = HttpStatus.NOT_FOUND,reason = "exception")
public class StockException extends RuntimeException{

    public Integer code;

    public StockException(ResultEnum resultEnum) {
        super(resultEnum.getMessage());
        this.code = resultEnum.getCode();

    }

    public StockException(Integer code, String message) {
        super(message);
        this.code = code;
    }


}
