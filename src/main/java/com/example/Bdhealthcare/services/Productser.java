package com.example.Bdhealthcare.services;


import com.example.Bdhealthcare.model.Product;

import java.util.Optional;

public interface Productser {

    void saveProduct(Product product);
    Optional<Product> getProductById(Long id);


}
   












