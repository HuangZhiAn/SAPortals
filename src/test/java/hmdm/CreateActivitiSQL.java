package hmdm;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.junit.Test;

/**
 * Created by zhoujie on 2017/8/1.
 */
public class CreateActivitiSQL {
    /*使用代码创建流程数据库
	 * 23张表
	 *
	 * */
    @Test
    public void createTable(){
        //创建单例流程引擎工厂
        ProcessEngineConfiguration processEngineConfiguration = ProcessEngineConfiguration.createStandaloneProcessEngineConfiguration();
        //配置连接数据库的信息
        processEngineConfiguration.setJdbcDriver("com.mysql.jdbc.Driver");
        processEngineConfiguration.setJdbcUrl("jdbc:mysql://localhost:3306/hmdm_portal");
        processEngineConfiguration.setJdbcUsername("Joe");
        processEngineConfiguration.setJdbcPassword("l872007871");

        /**
         public static final String DB_SCHEMA_UPDATE_FALSE = "false";不自动创建表，没有表不创建数据库
         public static final String DB_SCHEMA_UPDATE_CREATE_DROP = "create-drop";先删除再创建表〃
         public static final String DB_SCHEMA_UPDATE_TRUE = "true";没有表则自动创建表〃
         */
        processEngineConfiguration.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
        //创建流程引擎对象
        ProcessEngine processEngine = processEngineConfiguration.buildProcessEngine();
        System.out.println("processEngine:"+processEngine);

    }
}
