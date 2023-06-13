package com.example.blogger.service.impl;

import com.example.blogger.dao.UserRepository;
import com.example.blogger.po.User;
import com.example.blogger.service.UserService;
import com.example.blogger.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Override
    public User checkUser(String username, String password) {
        User user=userRepository.findByUsernameAndPassword(username, MD5Utils.code(password));
        return user;
    }
}
