package com.target.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by jiejiao on 2016/8/9.
 */
public class LoginFillter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        filterChain.doFilter(servletRequest, servletResponse);
        HttpServletRequest sreq = (HttpServletRequest) servletRequest;
        HttpServletResponse sres = (HttpServletResponse) servletResponse;
        HttpSession session = ((HttpServletRequest) servletRequest).getSession();

        String path = ((HttpServletRequest) servletRequest).getRequestURI();
        String is_login = (String) session.getAttribute("name");
        System.out.println("name:"+is_login);

        if (path.indexOf("") > -1) {
            filterChain.doFilter(sreq, sres);
            return;
        }

        if (is_login == null || "".equals(is_login)) {
            sres.sendRedirect("");
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
