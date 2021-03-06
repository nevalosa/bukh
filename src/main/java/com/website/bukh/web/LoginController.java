package com.website.bukh.web;

import com.website.bukh.service.ShiroDbRealm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by ken.cui on 14-2-16.
 */
@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @RequestMapping(method = RequestMethod.GET)
    public String login() {
        Subject currentUser = SecurityUtils.getSubject();
        ShiroDbRealm.ShiroUser user = (ShiroDbRealm.ShiroUser) currentUser.getPrincipal();
        if (user == null) {
            return "login";
        } else {
            return "redirect:/admin/item";
        }
    }

    @RequestMapping(method = RequestMethod.POST)
    public String fail(@RequestParam(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM) String userName, Model model) {
        model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, userName);
        return "login";
    }
}
