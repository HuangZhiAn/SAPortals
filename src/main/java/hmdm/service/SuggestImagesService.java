package hmdm.service;

import hmdm.dto.SuggestImages;
import hmdm.dto.SuggestImagesExample;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/11.
 */
public interface SuggestImagesService extends IBaseService<SuggestImages,SuggestImagesExample> {
    int insertSelective(SuggestImages record,List<String> filePaths);
}
