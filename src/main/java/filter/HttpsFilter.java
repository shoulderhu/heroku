package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "HttpsFilter", urlPatterns = "/*",
initParams = {

        @WebInitParam(name = "header", value = "X-Forwarded-Proto")
})
public class HttpsFilter implements Filter {

    private FilterConfig config;

    public void init(FilterConfig config) throws ServletException {

        this.config = config;
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws ServletException, IOException {

        HttpServletRequest httpReq = (HttpServletRequest) request;
        String header = httpReq.getHeader(config.getInitParameter("header"));

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
