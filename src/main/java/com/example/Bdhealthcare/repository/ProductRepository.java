package com.example.Bdhealthcare.repository;

import com.example.Bdhealthcare.model.Product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;
import java.util.Optional;


public interface ProductRepository extends JpaRepository<Product, Long> {



    public Product findByBrandnameAndDescriptionAndPriceAndProductnameAndQuantityavailableAndCreateDateAndImageAndName(String brandname, String description,double price ,String productname,String quantityavailable,Date createDate,byte[] image,String name);

    void deleteAllById(Long id);




@Query(value = "select * FROM product   e where e.brandname like %:keyword% or e.productname like %:keyword% ",nativeQuery = true)
List<Product> findByKeyword(@Param("keyword") String keyword);

    Optional<Product> findById(Long id);

}

