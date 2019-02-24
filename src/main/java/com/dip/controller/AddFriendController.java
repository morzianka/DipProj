package com.dip.controller;

import com.dip.entity.User;
import com.dip.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Controller
public class AddFriendController {
    @Autowired
    private UserService userService;

    @GetMapping("/possibleFriends")
    public String possibleFriends(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        Collection<User> similarUsers = userService.getSimilarUsers(user.getLanguageToLearn());
        similarUsers.remove(user);
        similarUsers.removeAll(user.getFriends());
        model.addAttribute("similarUsers", similarUsers);
        return "possibleFriends";
    }

    @PostMapping("/addFriend")
    public String addFriend(@RequestParam("similarUser") String similarUser, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        User friend = userService.getUser(similarUser);
        user.add(friend);
        userService.saveUser(user);
        return "possibleFriends";
    }
}
