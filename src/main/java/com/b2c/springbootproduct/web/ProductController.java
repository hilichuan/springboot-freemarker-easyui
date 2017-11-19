package com.b2c.springbootproduct.web;

import com.b2c.springbootproduct.dao.ProductDao;
import com.b2c.springbootproduct.domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

    @Autowired
    private ProductDao productDao;

    @GetMapping(value = "/findOne")
    @ResponseBody
    public Product selectProduct(@RequestParam("id") Integer id){
        Product product=productDao.selectById(id);
        System.out.println(product.toString());
        return product;
    }

    @GetMapping(value = "/findAll")
    public String findAll(Model model){

        List<Product> list=productDao.findAll();
        model.addAttribute("list",list);
        return "index";
    }

    @GetMapping(value = "/add")
    public String addPro(){
        return "addProduct";
    }


}
