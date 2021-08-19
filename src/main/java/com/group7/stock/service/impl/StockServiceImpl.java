package com.group7.stock.service.impl;

import com.group7.stock.enums.ResultEnum;
import com.group7.stock.exception.StockException;
import com.group7.stock.pojo.Stock;
import com.group7.stock.repository.StockRepository;
import com.group7.stock.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Optional;

/**
 * @author : LuWei
 */
@Service
public class StockServiceImpl implements StockService {
    private StockRepository stockRepository;

    @Autowired
    public StockServiceImpl(StockRepository stockRepository) {
        this.stockRepository = stockRepository;

    }


    @Override
    public Stock findById(int id) {

        Optional<Stock> stock =stockRepository.findById(id);
        if(stock == null) {
            throw new StockException(ResultEnum.STOCK_NOT_EXIST);
        }
        return stock.get();
    }

    @Override
    public Stock stockUpdateByVolume(int id, Stock newStock) {
        Stock stock = stockRepository.findById(id).get();
        stock.setVolume(newStock.getVolume());
        stock.setClosePrice(newStock.getClosePrice());
        stock.setHighPrice(newStock.getHighPrice());
        stock.setOpenPrice(newStock.getOpenPrice());
        stock.setLowPrice(newStock.getLowPrice());
        stock.setDateTime(newStock.getDateTime());
        stockRepository.save(stock);
        return stock;
    }

    @Override
    @Transactional
    public void deleteStocksByStockId(Integer id) {

        Stock stock =stockRepository.findById(id).get();
        if(stock == null) {
            throw new StockException(ResultEnum.STOCK_NOT_EXIST);
        }

        stockRepository.deleteStocksByStockId(id);

    }

    @Override
    public List<Stock> findMaxVolume() {
        return stockRepository.findMaxVolume();
    }

    @Override
    @Transactional
    public void addStock(Stock stock) {
        Optional<Stock> existingStock = stockRepository.findById(stock.getStockId());
        if(existingStock.isPresent()){
            throw new StockException(ResultEnum.STOCK_NOT_EXIST);
        }
        stockRepository.save(stock);
    }
}
