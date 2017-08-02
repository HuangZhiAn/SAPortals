package hmdm.util;
import org.junit.Test;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by 周洁 on 2017/8/2.
 * 加密类
 */
public class Encoder{

    /*
    *生成具体的md5密码到buf数组
    *
    */
    private static String getByte(byte[] b) {
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < b.length; i++) {
            int a = b[i];
            if (a < 0)
                a += 256;
            if (a < 16)
                buf.append("0");
            buf.append(Integer.toHexString(a));

        }
        //System.out.println("16位: " + buf.toString().substring(8, 24));// 16位的加密，其实就是32位加密后的截取
        return buf.toString();
    }

    /**
     * 传入字符串获得MD5加密后32位小写的方法
     * @param plainText
     * @return String
     * @throws NoSuchAlgorithmException
     */
    public static String EncoderByMD5(String plainText) throws NoSuchAlgorithmException {
        //生成实现指定摘要算法的 MessageDigest 对象。
        MessageDigest md = MessageDigest.getInstance("MD5");
        //使用指定的字节数组更新摘要。
        md.update(plainText.getBytes());
        //通过执行诸如填充之类的最终操作完成哈希计算。
        byte b[] = md.digest();
        //调用getByte方法生成具体的md5密码到buf数组
        String strMD5 = Encoder.getByte(b);//获得32位小写加密密码
        return  strMD5;
    }

    /**
     * 测试EncoderByMD5
     * @throws UnsupportedEncodingException
     * @throws NoSuchAlgorithmException
     */
    @Test
    public void testMD5() throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String str   = "jie@0924";
        String newstr = Encoder.EncoderByMD5(str);
        System.out.println(newstr);
        //2bca782368da36650beadfbacf967e09
        //e10adc3949ba59abbe56e057f20f883e
    }





}
