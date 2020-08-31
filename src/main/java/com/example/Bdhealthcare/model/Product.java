package com.example.Bdhealthcare.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;



import javax.persistence.*;

import javax.validation.constraints.Size;

import java.util.Arrays;
import java.util.Date;

@Data
@Setter
@Getter
@Entity
@Table(name = "Product")
public class Product {


        @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id", nullable = false, unique = true)
        private Long id;







        @Column(name = "productname", nullable = false)
        private String productname;



        @Column(name = "brandname", nullable = false)
        private String brandname;



        @Column(name = "quantityavailable", nullable = false)
        private String quantityavailable;


        @Size(min = 2, max = 30, message = "Product name must be between 2 and 30 characters.")
        @Column(name = "name", nullable = false)
        private String name;


        //@Size(min = 10, max = 1000, message = "Product description must be between 10 and 1000 characters.")
        @Column(name = "description")
        private String description;

        //@Size(min = 2, max = 10)
        @Column(name = "price",nullable = false, precision = 10, scale = 2)
        private double price;

        @Temporal(TemporalType.TIMESTAMP)
        @Column(name = "create_date", nullable = false)
        private Date createDate;

        @Lob

        private byte[] image;




    public void setCreateDate(Date createDate) {
                this.createDate = createDate;
        }

        @Override
        public String toString() {
                return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + ", image="
                        + Arrays.toString(image) + ", createDate=" + createDate + " , brandname=" + brandname + "  , productname=" + productname + " , quantityavailable=" + quantityavailable + "]";
        }

}


