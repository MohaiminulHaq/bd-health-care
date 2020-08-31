package com.example.Bdhealthcare.services;

import java.text.SimpleDateFormat;
import java.util.*;

import com.example.Bdhealthcare.model.Product;
import com.example.Bdhealthcare.repository.ProductRepository;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;

import java.util.Collections;

@Setter
@Getter
@AllArgsConstructor
@Service
@Transactional
public class Productservice {

    private final ProductRepository productRepository;




    public void createProduct(Product productRequest) {



        productRepository.saveAndFlush(productRequest);

    }



    public Product findByBrandnameAndDescriptionAndPriceAndProductnameAndQuantityavailableAndCreateDateAndImageAndName(Long id, String brandname, String description, double price, String productname, String quantityavailable, Date createDate, byte[] image,String name) {



        return productRepository.findByBrandnameAndDescriptionAndPriceAndProductnameAndQuantityavailableAndCreateDateAndImageAndName(brandname, description, price, productname, quantityavailable, createDate,image,name);

    }

    public List<Product> showmyStudents() {
        List<Product> students = new ArrayList<Product>();
        for (Product student : productRepository.findAll()) {
            students.add(student);
        }
        return students;
    }





    public Product editProduct(Long id) {
        Optional<Product> productOptional = productRepository.findById(id);
        System.out.print("product list"+productOptional.get());
       return productOptional.get();


    }

    public void saveMyUpdate(Product book ) {

        productRepository.saveAndFlush(book);
    }


    public void deleteProduct(Long id) {



        productRepository.deleteAllById(id);


    }

public List<Product> listAll(){
        return (List<Product>)productRepository.findAll();
}


    public List<Product> findByKeyword(String keyword) {



         return productRepository.findByKeyword(keyword);
    }



    public List<Product> showmyStudents1() {
        List<Product> students = new ArrayList<Product>();
        for (Product student : productRepository.findAll()) {
            students.add(student);
        }
        return students;
    }


    public Optional<Product> getProductById(Long id) {
        return productRepository.findById(id);
    }
}