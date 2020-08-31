package com.example.Bdhealthcare.repository;


import com.example.Bdhealthcare.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    public User findByName1AndPassword(String name1, String password);
}
