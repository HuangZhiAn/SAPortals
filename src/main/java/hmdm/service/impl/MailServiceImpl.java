package hmdm.service.impl;

import hmdm.service.IMailService;
import hmdm.util.File2byteArray;
import org.springframework.stereotype.Service;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.util.ByteArrayDataSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.*;

/**
 * Created by JoeHuang on 2017/7/4.
 * TUDO:带附件邮件
 */
@Service
public class MailServiceImpl implements IMailService {
    // 邮件发送协议
    private String protocol = "smtp";
    // SMTP邮件服务器
    private String host = "smtp.163.com";
    // SMTP邮件服务器默认端口
    private String port = "25";
    // 是否要求身份认证
    private String is_auth = "true";
    // 是否启用调试模式（启用调试模式可打印客户端与服务器交互过程时一问一答的响应消息）
    private String is_enabled_debug_mod = "false";
    // 发件人
    private String from = "s872007871@163.com";
    // 收件人
    public String to = "872007871@qq.com";
    // 初始化连接邮件服务器的会话信息
    private Properties props = null;

    private void init() {
        props = new Properties();
        props.setProperty("mail.transport.protocol", protocol);
        props.setProperty("mail.smtp.host", host);
        props.setProperty("mail.smtp.port", port);
        if (is_auth != null && !is_auth.equals(""))
            props.setProperty("mail.smtp.auth", is_auth);
        if (is_enabled_debug_mod != null && !is_enabled_debug_mod.equals(""))
            props.setProperty("mail.debug", is_enabled_debug_mod);
    }

    public void initProperties(String protocol, String host, String port, String from, String to) {
        if (protocol != null && !protocol.equals(""))
            this.protocol = protocol;
        if(host!=null&&!host.equals(""))
            this.host = host;
        if (port != null && !port.equals(""))
            this.port = port;
        this.from = from;
        this.to = to;
        init();
    }

    /**
     * 发送简单的文本邮件
     */
    public void sendTextEmail(String subject, String text, String user, String password) throws Exception {
        // 创建Session实例对象
        Session session = Session.getDefaultInstance(props);
        // 创建MimeMessage实例对象
        MimeMessage message = new MimeMessage(session);
        // 设置发件人
        message.setFrom(new InternetAddress(from));
        // 设置邮件主题
        message.setSubject(subject);
        // 设置收件人
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        // 设置发送时间
        message.setSentDate(new Date());
        // 设置纯文本内容为邮件正文
        message.setText(text);
        // 保存并生成最终的邮件内容
        message.saveChanges();
        // 获得Transport实例对象
        Transport transport = session.getTransport();
        // 打开连接
        transport.connect(host, user, password);
        // 将message对象传递给transport对象，将邮件发送出去
        transport.sendMessage(message, message.getAllRecipients());
        // 关闭连接
        transport.close();
    }

    /**
     * 发送带内嵌图片、附件、多收件人(显示邮箱姓名)、邮件优先级、阅读回执的完整的HTML邮件
     */
    public void sendMultipleEmail(String subject, String text, List<byte[]> list,
                                  String contentType,List<String> fileName,String user,
                                  String password) throws Exception {
        String charset = "utf-8";
        // 创建Session实例对象
        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);
        // 设置主题
        message.setSubject(subject);
        // 设置发送人
        message.setFrom(new InternetAddress(from, user, charset));
        // 设置收件人
        message.setRecipients(MimeMessage.RecipientType.TO,
                new Address[]{
                        // 参数1：邮箱地址，参数2：姓名（在客户端收件只显示姓名，而不显示邮件地址），参数3：姓名中文字符串编码
                        new InternetAddress(to, "HMDM", charset),
                }
        );
        // 设置发送时间
        message.setSentDate(new Date());
        // 设置优先级(1:紧急 3:普通 5:低)
        message.setHeader("X-Priority", "1");

        // 创建一个MIME子类型为"mixed"的MimeMultipart对象，表示这是一封混合组合类型的邮件
        MimeMultipart mailContent = new MimeMultipart("mixed");
        message.setContent(mailContent);

        /*添加附件*/
        Iterator<String> iterator = fileName.iterator();
        for (byte[] file : list) {
            MimeBodyPart fileBody = new MimeBodyPart();
            fileBody.setHeader("Content-Type", "text/html; charset=UTF-8");
            //DataSource source = new FileDataSource(file);
            DataSource source = new ByteArrayDataSource(file,"text/html; charset=UTF-8");
            fileBody.setDataHandler(new DataHandler(source));
            fileBody.setFileName(iterator.next().toString());
            mailContent.addBodyPart(fileBody);
        }

        // 内容
        MimeBodyPart mailBody = new MimeBodyPart();
        mailContent.addBodyPart(mailBody);

        // 邮件正文(内嵌图片+html文本)
        MimeMultipart body = new MimeMultipart("related");

        //邮件正文也是一个组合体,需要指明组合关系
        mailBody.setContent(body);

        // 邮件正文由html和图片构成
        MimeBodyPart htmlPart = new MimeBodyPart();
        body.addBodyPart(htmlPart);

        // html邮件内容
        MimeMultipart htmlMultipart = new MimeMultipart("alternative");
        htmlPart.setContent(htmlMultipart);
        MimeBodyPart htmlContent = new MimeBodyPart();
        htmlContent.setContent(
                "<span style='font-size: 15px'>点击<a href='"+text +
                                                "'>这里</a>或复制下面连接到浏览器打开<br/>"+text+"</span>"
                , "text/html;charset=utf-8");
        htmlMultipart.addBodyPart(htmlContent);

        // 保存邮件内容修改
        message.saveChanges();

        // 发送邮件
        Transport transport = session.getTransport();
        // 打开连接
        transport.connect(host,user,password);
        // 将message对象传递给transport对象，将邮件发送出去
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
    }
}
