package filter;

import io.github.bucket4j.Bandwidth;
import io.github.bucket4j.Bucket;
import io.github.bucket4j.Bucket4j;
import io.github.bucket4j.Refill;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.time.Duration;

public class RateFilter implements Filter {

    private FilterConfig config;
    private long token, capacity;

    public void init(FilterConfig config) throws ServletException {

        this.config = config;
        token = Long.parseLong(config.getInitParameter("token"));
        capacity = Long.parseLong(config.getInitParameter("capacity"));
    }

    private Bucket createBucket() {

        Refill refill = Refill.greedy(token, Duration.ofSeconds(1));
        Bandwidth bandwith = Bandwidth.classic(capacity, refill);
        return Bucket4j.builder().addLimit(bandwith).build();
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws ServletException, IOException {

        HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpSession session = httpReq.getSession();

        //String appKey = SecurityUtils



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
