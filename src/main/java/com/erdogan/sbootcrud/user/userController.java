package com.erdogan.sbootcrud.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Semih ERDOĞAN <semih.erdogan@indbilisim.com.tr>
 * @since 2.0.11-SNAPSHOT
 */
@Controller
@RequestMapping(headers = "Accept=text/html", value = "/")
public class userController {
    @Autowired
    UserService userService;


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "/user/user-login";
    }

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "/user/user-home";
    }

}
