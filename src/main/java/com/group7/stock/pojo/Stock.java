package com.group7.stock.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author : LuWei
 */

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@DynamicUpdate
public class Stock {

    @Id

    @Column(name = "id")
    private Integer stockId;

    @Column(name = "date")
    private Date dateTime;

    private String symbol;

    @Column(name = "open")
    private BigDecimal openPrice;

    @Column(name = "high")
    private BigDecimal highPrice;

    @Column(name = "low")
    private BigDecimal lowPrice;

    @Column(name = "close")
    private BigDecimal closePrice;

    private int volume;

    @Override
    public String toString() {
        return "Stock{" +
                "stockId=" + stockId +
                ", dateTime=" + dateTime +
                ", symbol='" + symbol + '\'' +
                ", openPrice=" + openPrice +
                ", highPrice=" + highPrice +
                ", lowPrice=" + lowPrice +
                ", closePrice=" + closePrice +
                ", volume=" + volume +
                '}';
    }
}
