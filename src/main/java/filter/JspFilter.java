package filter;

import javax.servlet.*;

import java.io.IOException;

public class JspFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        System.out.println("JspFilter");
        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}
