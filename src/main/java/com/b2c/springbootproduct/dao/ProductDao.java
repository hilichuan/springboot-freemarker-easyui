package com.b2c.springbootproduct.dao;

import com.b2c.springbootproduct.domain.Product;

import java.util.List;

public interface ProductDao {
    Product selectById(Integer productId);
    List<Product> findAll();
}
