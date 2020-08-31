package com.example.Bdhealthcare.model;



import lombok.Getter;
import lombok.Setter;


import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "User")
public class User {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, unique = true)
    private Long id;
    @Column(updatable = false, nullable = false)

    private String name1;
    private String email;

    private String password;
    private String phone;

}
