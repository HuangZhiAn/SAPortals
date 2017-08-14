package hmdm.controllers;

import hmdm.dto.Function;
import hmdm.dto.FunctionExample;
import hmdm.service.FunctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by PC on 2017/8/9.
 */
@Controller
public class FunctionController {
    @Autowired
    private FunctionService functionService;
    @RequestMapping("/function/query")
    public @ResponseBody List<Function> queryByProductId(Long productId){
        //模拟传入数据
        //productId=1001L;
        /*FunctionExample example = new FunctionExample();
        example.createCriteria().andProductIdEqualTo(productId);
        List<Function> functions = functionService.selectByExample(example);*/

        return functionService.selectByProductId(productId);
    }
}
