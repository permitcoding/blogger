package com.example.blogger.service;

import com.example.blogger.po.User;

import javax.jws.soap.SOAPBinding;

public interface UserService {
    User checkUser(String username, String password);
}
