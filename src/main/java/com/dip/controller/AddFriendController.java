package com.dip.controller;

import com.dip.entity.User;
import com.dip.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

public class AddFriendController {
    @Autowired
    private UserService userService;

    @GetMapping("/getPossibleFriends")
    public String getPossibleFriends(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        Collection<User> similarUsers = userService.getSimilarUsers(user.getLanguageToLearn());
        model.addAttribute("similarUsers", similarUsers);
        return "possibleFriends";
    }

    @PostMapping("/addFriend")
    public String addFriend(HttpServletRequest request, @ModelAttribute("friend") User friend) {
        User user = (User) request.getSession().getAttribute("user");
        user.add(friend);
        return "possibleFriends";
    }
}
