package com.nagarro.training.assignement5.interceptors;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Component
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        System.out.println("[LoginInterceptor] -> preHandle");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        if (username != null) {
            request.setAttribute("username", username);
            response.sendRedirect("portal");
            return false;
        }
        return true;
    }
}
