package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

public class HttpsFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws ServletException, IOException {

        HttpServletRequest httpReq = (HttpServletRequest) request;
        String header = httpReq.getHeader("X-Forwarded-Proto");

        if(header != null && header.indexOf("https") != 0) {

            String location = httpReq.getRequestURL().insert(4, 's').toString();
            ((HttpServletResponse) response).sendRedirect(location);
            return;
        }

        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}
