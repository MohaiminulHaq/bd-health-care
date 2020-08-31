package com.example.Bdhealthcare.controller;

import com.example.Bdhealthcare.model.Product;


import com.example.Bdhealthcare.services.Productser;
import com.example.Bdhealthcare.services.Productservice;
import com.example.Bdhealthcare.services.Userservice;
import lombok.Getter;

import lombok.Setter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Optional;


@Setter
@Getter

@Controller

public class ProductController {



    @Value( "${avd}")
    private String uploadFolder;
    private final Logger log = LoggerFactory.getLogger(this.getClass());


    @Autowired
    private Productser productser1;

    private final Productservice productservice;

    private final Userservice userservice;

    public ProductController(Productservice productservice, Userservice userservice) {
        this.productservice = productservice;
        this.userservice = userservice;
    }


  //post
    @PostMapping("/store_product1/saveProduct1" )
    public @ResponseBody ResponseEntity<?> createEmployee1(@RequestParam("name") String name,
                                                          @RequestParam("price") double price, @RequestParam("description") String description,
                                                          @RequestParam ("productname") String productname, @RequestParam ("brandname") String brandname, @RequestParam ("quantityavailable") String quantityavailable,
                                                          Model model, HttpServletRequest request,final @RequestParam("image") MultipartFile file) {
        try {
       String uploadDirectory = System.getProperty("user.dir") + uploadFolder;
            //    String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
            log.info("uploadDirectory:: " + uploadDirectory);
            String fileName = file.getOriginalFilename();
            String filePath = Paths.get(uploadDirectory, fileName).toString();
            log.info("FileName: " + file.getOriginalFilename());
            if (fileName == null || fileName.contains("..")) {
                model.addAttribute("invalid", "Sorry! Filename contains invalid path sequence \" + fileName");
                return new ResponseEntity<>("Sorry! Filename contains invalid path sequence " + fileName, HttpStatus.BAD_REQUEST);
            }


            String[] names = name.split(",");
            String[] descriptions = description.split(","+",");
            String[] Brandname = brandname.split(",");
            String[] Productname = productname.split(",");
            String[] Quantityavailable = quantityavailable.split(",");




            Date createDate = new Date();
            log.info("Name: " + names[0]+" "+filePath);
            log.info("description: " + descriptions[0] );

            log.info("Brandname: " + Brandname[0]);
            log.info("Productname: " + Productname[0]);
            log.info("Quantityavailable: " + Quantityavailable[0]);
            abc(file, uploadDirectory, filePath);
            byte[] imageData = file.getBytes();
            Product product =new Product();
            product.setName(names[0]);
            product.setImage(imageData);
            product.setPrice(price);
            product.setDescription(descriptions[0]);

            product.setProductname(Productname[0]);
            product.setBrandname(Brandname[0]);
            product.setQuantityavailable(Quantityavailable[0]);



            product.setCreateDate(createDate);


            productser1.saveProduct(product);

            log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
            return new ResponseEntity<>("Product Saved With File - " + fileName, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

    }





    //update
    @PostMapping("/store_product1/saveProduct/{id}" )
    public @ResponseBody ResponseEntity<?> createEmployee(@RequestParam("name") String name,
              @RequestParam("price") double price, @RequestParam("description") String description,
                @RequestParam ("productname") String productname, @RequestParam ("brandname") String brandname, @RequestParam ("quantityavailable") String quantityavailable,
                Model model, HttpServletRequest request,final @RequestParam("image") MultipartFile file,@PathVariable("id") Long id) {
        try {
            String uploadDirectory = System.getProperty("user.dir") + uploadFolder;
          //  String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
            log.info("uploadDirectory:: " + uploadDirectory);
            String fileName = file.getOriginalFilename();
            String filePath = Paths.get(uploadDirectory, fileName).toString();
            log.info("FileName: " + file.getOriginalFilename());
            if (fileName == null || fileName.contains("..")) {
                model.addAttribute("invalid", "Sorry! Filename contains invalid path sequence \" + fileName");
                return new ResponseEntity<>("Sorry! Filename contains invalid path sequence " + fileName, HttpStatus.BAD_REQUEST);
            }
            String[] names = name.split(",");
            String[] descriptions = description.split(",");
            String[] Brandname = brandname.split(",");
            String[] Productname = productname.split(",");
            String[] Quantityavailable = quantityavailable.split(",");




            Date createDate = new Date();
            log.info("Name: " + names[0]+" "+filePath);
            log.info("description: " + descriptions[0]);

            log.info("Brandname: " + Brandname[0]);
            log.info("Productname: " + Productname[0]);
            log.info("Quantityavailable: " + Quantityavailable[0]);
            abc(file, uploadDirectory, filePath);
            byte[] imageData = file.getBytes();
            Product product =productservice.editProduct(id);

            product.setName(names[0]);
            product.setImage(imageData);
            product.setPrice(price);
            product.setDescription(descriptions[0]);
            product.setProductname(Productname[0]);
            product.setBrandname(Brandname[0]);
            product.setQuantityavailable(Quantityavailable[0]);



            product.setCreateDate(createDate);


            productser1.saveProduct(product);

            log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
            return new ResponseEntity<>("Product Saved With File - " + fileName, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

    }

    private void abc(@RequestParam("image") MultipartFile file, String uploadDirectory, String filePath) {
        try {
            File dir = new File(uploadDirectory);
            if (!dir.exists()) {
                log.info("Folder Created");
                dir.mkdirs();
            }
            // Save the file locally
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
            stream.write(file.getBytes());
            stream.close();
        } catch (Exception e) {
            log.info("in catch");
            e.printStackTrace();
        }
    }


    @GetMapping("/product/display/{id}")
    @ResponseBody
    void showImage(@PathVariable("id") Long id, HttpServletResponse response, Optional<Product> product)
            throws ServletException, IOException {
        log.info("Id :: " + id);
        product = productservice.getProductById(id);
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        response.getOutputStream().write(product.get().getImage());
        response.getOutputStream().close();
    }








    @RequestMapping("/search2")
    public String storep1(@ModelAttribute Product product, HttpServletRequest request, String keyword) {


        request.setAttribute("students", productservice.findByKeyword(keyword));
        return "search";
    }


    @GetMapping ("/store_product1")
    public String storep() {
        return "ManageProduct";
    }







    @RequestMapping("/view2")
    public String loginUser2(@ModelAttribute Product product, HttpServletRequest request) {

        request.setAttribute("students", productservice.showmyStudents());
        return "ViewProduct";
    }


    @RequestMapping("/edit-product")
    public String editProduct(@RequestParam Long id, HttpServletRequest request) {
        request.setAttribute("book", productservice.editProduct(id));
        return "EditProductPage";
    }


    @PostMapping("/productList_update")
    public String Updateproduct(@ModelAttribute Product book, HttpServletRequest request) {
        request.setAttribute("students", productservice.showmyStudents());



        productser1.saveProduct(book);
        return "ViewProduct";
    }



    @RequestMapping("/delete-product")
    public String deleteUser(@RequestParam Long id, HttpServletRequest request) {

        productservice.deleteProduct(id);
        request.setAttribute("students", productservice.showmyStudents());
        return "ViewProduct";
    }



    @GetMapping("students")
    public String getAbc(Model model,String keyword) {

        if (keyword != null) {
            model.addAttribute("students", productservice.findByKeyword(keyword));
        } else {
            model.addAttribute("students", productservice.getProductRepository());


        }

        return "ViewProduct";


    }



    @RequestMapping("/productview")
    public String productview(@RequestParam Long id, HttpServletRequest request) {
        request.setAttribute("book", productservice.editProduct(id));
        return "productview";
    }


}




