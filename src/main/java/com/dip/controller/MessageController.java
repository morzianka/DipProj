package com.dip.controller;

import com.dip.chat.Message;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MessageController {
    @GetMapping("/chat")
    public String chat() {
        return "chat";
    }
    @MessageMapping("/chat/chat.sendMessage")
    @SendTo("/topic/public")
    public Message sendMessage(@Payload Message message) {
        return message;
    }

    @MessageMapping("/chat/chat.addUser")
    @SendTo("/topic/public")
    public Message addUser(@Payload Message message,
                               SimpMessageHeaderAccessor headerAccessor) {
        // Add username in web socket session
        headerAccessor.getSessionAttributes().put("username", message.getSender());
        return message;
    }

    /*@GetMapping("/chat")
    public String chat(@RequestParam("user") String user , @RequestParam("friend") String friend, Model model,
                             SimpMessageHeaderAccessor headerAccessor){
        headerAccessor.getSessionAttributes().put("user", user);
        headerAccessor.getSessionAttributes().put("friend", friend);
        return "chat";
    }*/
}