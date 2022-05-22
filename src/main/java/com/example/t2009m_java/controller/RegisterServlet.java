package com.example.t2009m_java.controller;

import com.example.t2009m_java.entity.Account;
import com.example.t2009m_java.entity.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////        // lấy dữ liệu truyền lên từ query string.
////        String currentName = req.getParameter ("currentName");
////        // set vào thuộc tính của request
////        req.setAttribute("currentName",currentName);
//        List<Student> list = new ArrayList<>();
//        Student student = new Student("A001" , "Hong Quang" ,1);
//        list.add(student);
//        Student student1 = new Student("A002" , "Hong Quang Nguyen" ,2);
//        list.add(student1);
//        req.setAttribute("list",list);
        req.getRequestDispatcher("/hello.jsp").forward( req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String username= req.getParameter("username");
        String fullName= req.getParameter("fullName");
        String password= req.getParameter("password");
        String confirmPassword= req.getParameter("confirmPassword");
//        resp.getWriter().printf("ban da dang ky thanh cong username%s ,fullName%s" , username ,fullName);
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        account.setFullName(fullName);
        req.setAttribute("account", account);
        req.getRequestDispatcher( "/user/register-success.jsp").forward(req,resp);

    }
}
