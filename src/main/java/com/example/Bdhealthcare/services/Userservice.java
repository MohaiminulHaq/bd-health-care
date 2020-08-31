package com.example.Bdhealthcare.services;




import com.example.Bdhealthcare.model.User;

import com.example.Bdhealthcare.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;



@AllArgsConstructor
@Service
public class Userservice {


    private final UserRepository userRepository;

    public void createUser(User userRequest) {

        userRepository.saveAndFlush(userRequest);

    }


    public User findByUsernameAndPassword(String username, String password) {
        return userRepository.findByName1AndPassword(username, password);
    }





}
