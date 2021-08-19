package com.group7.stock.controller;

import com.group7.stock.enums.ResultEnum;
import com.group7.stock.exception.StockException;
import com.group7.stock.pojo.Stock;
import com.group7.stock.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import java.util.List;
import java.util.Map;

/**
 * @author : LuWei
 */

@RestController
@RequestMapping("/stockmarket")
public class StockController {

    @Autowired
    private StockService stockService;

    @GetMapping(path="{stockId}")
    public Stock getStock(@PathVariable("stockId") int id){

        return stockService.findById(id);
    }

    @RequestMapping(path = "/update/{stockId}", method = RequestMethod.PUT)
    public Stock updateVolume(@PathVariable("stockId") int id, @RequestBody Stock newStock) {
        return stockService.stockUpdateByVolume(id, newStock);
    }

    @RequestMapping(path="/delete/{stockId}",method = RequestMethod.DELETE)

    public void deleteStock(@PathVariable("stockId") int id){

        stockService.deleteStocksByStockId(id);
    }

    @GetMapping(path="/max/volume")

    public List<Stock> findMaxVolume() {
        return stockService.findMaxVolume();
    }

    @PostMapping(path="/add")
    public void registerNewUser(@RequestBody Stock stock){
        stockService.addStock(stock);
    }



}
