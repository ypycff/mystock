package com.group7.stock.service;

import com.group7.stock.pojo.Stock;

import java.util.Date;
import java.util.List;

/**
 * @author : LuWei
 */
public interface StockService {



    Stock findById(int id);

    Stock stockUpdateByVolume(int id, Stock stock);

    void deleteStocksByStockId(Integer id);

    List<Stock> findMaxVolume();

    void addStock(Stock stock);





}
