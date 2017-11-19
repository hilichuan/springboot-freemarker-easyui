package com.b2c.springbootproduct.web;

import com.b2c.springbootproduct.dao.UserDao;
import com.b2c.springbootproduct.domain.Product;
import com.b2c.springbootproduct.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Description:
 * @Date: 19:18  2017/11/19
 */

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private UserDao userDao;

    @GetMapping(value = "/list")
    public String findUserList(Model model){

        List<User> list=userDao.findUserList();
        model.addAttribute("list",list);
        return "user";
    }
}
