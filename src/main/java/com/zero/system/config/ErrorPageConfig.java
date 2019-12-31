package com.zero.system.config;

import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.ErrorPageRegistrar;
import org.springframework.boot.web.server.ErrorPageRegistry;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;

/**
 * @Auther: wdd
 * @Date: 2019/12/29 14:49
 * @Description:
 */
@Component
public class ErrorPageConfig  implements ErrorPageRegistrar {

    @Override
    public void registerErrorPages(ErrorPageRegistry registry) {
        ErrorPage error400Page = new ErrorPage(HttpStatus.BAD_REQUEST,"/error/error400" );
        ErrorPage error401Page = new ErrorPage(HttpStatus.UNAUTHORIZED,"/error/error401");
        ErrorPage error403Page = new ErrorPage(HttpStatus.FORBIDDEN,"/error/error403");
        ErrorPage error500Page = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR,"/error/error500");
        registry.addErrorPages(error400Page,error401Page,error403Page,error500Page);
    }
}
