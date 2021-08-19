package com.group7.stock.repository;

import com.group7.stock.pojo.Stock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author : LuWei
 */
@Repository
public interface StockRepository extends JpaRepository<Stock,Integer> {

    @Modifying
    @Query(value = "delete from stock where id = ?1",nativeQuery = true)
    void deleteStocksByStockId(Integer id);

    @Query(value = "select * from stock where volume = (select max(volume) from stock) ",nativeQuery = true)
    List<Stock> findMaxVolume();


}
