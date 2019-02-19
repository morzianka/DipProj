package com.dip.controller;

import com.dip.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class FriendsController {
    @GetMapping("/friends")
    public String friends(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        model.addAttribute("user", user);
        System.out.println(user);
        return "friends";
    }

    @PostMapping("/friends")
    public String friends() {
        return "friends";
    }
}
