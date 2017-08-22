package hmdm.service.impl;

import hmdm.dto.*;
import hmdm.mapper.DownRecordMapper;
import hmdm.mapper.ProductMapper;
import hmdm.service.DownRecordService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;
@Aspect
@Service
public class DownRecordServiceImpl implements DownRecordService{

    @Autowired


    DownRecordMapper mapper;
    @Autowired
    ProductMapper productMapper;

    public DownRecordServiceImpl(){
//        mapper =(DownRecordMapper) AppliactionContextHelper.getBean("downRecordMapper");
//        productMapper = (ProductMapper) AppliactionContextHelper.getBean("productMapper");
    }

    @Pointcut("execution(* hmdm.controllers.ProductController.downloadFile(..))")
    private void downloadFile(){}//定义一个切入点

    @Around("downloadFile()")
    public Object around(ProceedingJoinPoint pjp) throws Throwable{
        Object object = pjp.proceed();//执行该方法
        String result = (String) object;
        if(result.equals("Download success")){
            DownRecord downRecord = new DownRecord();
            Object[] args = pjp.getArgs();
            //获取productId
            String productName =(String) args[0];
            String version = (String) args[1];
            String customerId = (String) args[3];

            System.out.println("产品和版本"+productName+version);
            ProductExample example = new ProductExample();
            example.createCriteria().andNameEqualTo(productName).andVersionLike(version);
            List<Product> products = productMapper.selectByExample(example);
            if(products!=null&&products.size()>0){
                downRecord.setProductId(products.get(0).getProductId());
            }else{
                throw new Exception("Product not exist");
            }
            downRecord.setCustomerId(Long.parseLong(customerId));

            downRecord.setTime(new Date());
            int i = mapper.insertSelective(downRecord);
            if(i<=0){
               throw new Exception("下载记录插入失败");
            }
        }
        return object;
    }

    @Override
    public long countByExample(DownRecordExample example) {
        return mapper.countByExample(example);
    }

    @Override
    public int deleteByExample(DownRecordExample example) {
        return mapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long recordId) {
        return mapper.deleteByPrimaryKey(recordId);
    }

    @Override
    public int insert(DownRecord record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(DownRecord record) {
        return mapper.insertSelective(record);
    }

    @Override
    public List<DownRecord> selectByExample(DownRecordExample example) {
        return mapper.selectByExample(example);
    }

    @Override
    public DownRecord selectByPrimaryKey(Long recordId) {
        return selectByPrimaryKey(recordId);
    }

    @Override
    public int updateByExampleSelective(DownRecord record, DownRecordExample example) {
        return mapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(DownRecord record, DownRecordExample example) {
        return mapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(DownRecord record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(DownRecord record) {
        return mapper.updateByPrimaryKey(record);
    }
}
