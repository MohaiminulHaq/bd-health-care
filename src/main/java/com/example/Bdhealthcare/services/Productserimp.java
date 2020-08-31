package com.example.Bdhealthcare.services;
import com.example.Bdhealthcare.model.Product;
import com.example.Bdhealthcare.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Transactional
public class Productserimp implements Productser{



    @Autowired
    private ProductRepository productRepository;

    @Override
    public void saveProduct(Product product) {

        productRepository.save(product); }


    @Override
    public Optional<Product> getProductById(Long id) {

        return productRepository.findById(id); }



}
