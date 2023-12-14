package servlets;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet Filter implementation class CharacterEncodingFilter
 */
public class CharacterEncodingFilter implements Filter{
    protected String encoding = null;
    protected FilterConfig filterConfig = null;
    //初始化方法
    public void init(FilterConfig filterConfig) throws ServletException {
    	this.filterConfig = filterConfig;
        this.encoding = filterConfig.getInitParameter("encoding");
        System.out.println("过滤器设定编码方式为：" + encoding);
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("成功通过过滤器!");
    	if (encoding != null) {
            request.setCharacterEncoding(encoding);
            response.setContentType("text/html; charset="+encoding);
        }
        chain.doFilter(request, response);
    }
    // 销毁方法
    public void destroy() {
    	this.encoding = null;
        this.filterConfig = null;
    }
}
