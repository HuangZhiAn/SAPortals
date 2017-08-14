package hmdm;

import hmdm.controllers.ProductController;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by JoeHuang on 2017/8/4.
 */
public class AopTest {

    @org.junit.Test
    public void test(){
        ApplicationContext context =new ClassPathXmlApplicationContext("/spring/application-context.xml");
        ProductController bean = (ProductController)context.getBean("productController");
        System.out.println(bean.getClass().getName());
        bean.test();
    }


}
