package hmdm.service.impl;

import hmdm.dto.SuggestImages;
import hmdm.dto.SuggestImagesExample;
import hmdm.mapper.SuggestImagesMapper;
import hmdm.service.SuggestImagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/11.
 */
@Service
public class SuggestImagesServiceImpl implements SuggestImagesService {
    @Autowired
    SuggestImagesMapper mapper;

    public long countByExample(SuggestImagesExample example) {
        return mapper.countByExample(example);
    }

    public int deleteByExample(SuggestImagesExample example) {
        return mapper.deleteByExample(example);
    }

    public int deleteByPrimaryKey(Long functionId) {
        return mapper.deleteByPrimaryKey(functionId);
    }

    public int insert(SuggestImages record) {
        return mapper.insert(record);
    }

    public int insertSelective(SuggestImages record) {
        return mapper.insertSelective(record);
    }
    public int insertSelective(SuggestImages record,List<String> filePaths) {
        for (String filePath:filePaths) {
            if(record.getImage1()==null||record.getImage1().equals("")){
                record.setImage1(filePath);
            }else if(record.getImage2()==null||record.getImage2().equals("")){
                record.setImage2(filePath);
            }
            else if(record.getImage3()==null||record.getImage3().equals("")){
                record.setImage3(filePath);
            }else if(record.getImage4()==null||record.getImage4().equals("")){
                record.setImage4(filePath);
            }
            else if(record.getImage5()==null||record.getImage5().equals("")){
                record.setImage5(filePath);
            }
            else if(record.getImage6()==null||record.getImage6().equals("")){
                record.setImage6(filePath);
            }else if(record.getImage7()==null||record.getImage7().equals("")){
                record.setImage7(filePath);
            }
            else if(record.getImage8()==null||record.getImage8().equals("")){
                record.setImage8(filePath);
            }else if(record.getImage9()==null||record.getImage9().equals("")){
                record.setImage9(filePath);
            }
            else if(record.getImage10()==null||record.getImage10().equals("")){
                record.setImage10(filePath);
            }
        }
        return mapper.insertSelective(record);
    }

    public List<SuggestImages> selectByExample(SuggestImagesExample example) {
        return mapper.selectByExample(example);
    }

    public SuggestImages selectByPrimaryKey(Long functionId) {
        return mapper.selectByPrimaryKey(functionId);
    }

    public int updateByExampleSelective(SuggestImages record, SuggestImagesExample example) {
        return mapper.updateByExampleSelective(record,example);
    }

    public int updateByExample(SuggestImages record, SuggestImagesExample example) {
        return mapper.updateByExample(record,example);
    }

    public int updateByPrimaryKeySelective(SuggestImages record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(SuggestImages record) {
        return mapper.updateByPrimaryKey(record);
    }
}
