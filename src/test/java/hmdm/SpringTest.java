package hmdm;

import org.activiti.engine.ProcessEngine;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by JoeHuang on 2017/9/13.
 */
@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations={"classpath:spring/application*.xml"}) //加载配置文件
public class SpringTest {

    @Autowired
    private ProcessEngine processEngine;

    @Test
    public void processEngine(){
        System.out.println(processEngine.getHistoryService().createHistoricDetailQuery().list());
    }

}
