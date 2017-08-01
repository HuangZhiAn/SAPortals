package hmdm.service;

import java.util.List;

/**
 * Created by JoeHuang on 2017/7/4.
 */
public interface IMailService {
    public void sendTextEmail(String subject, String text, String user, String password) throws Exception;
    public void initProperties(String protocol, String host, String port, String from, String to);
    public void sendMultipleEmail(String subject, String text, List<byte[]> list, String contentType, List<String> fileName, String user, String password) throws Exception;
}
