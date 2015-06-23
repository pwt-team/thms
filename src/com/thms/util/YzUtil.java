package com.thms.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thms.common.Constants;

public class YzUtil {
	
	
	/******************************* 随 机 类 工 具 方 法*******************************/
	/**
	 * 根据输入的长度，随机生成字母+数字的字符串
	 * @param length
	 * @return
	 */
	public static String getCharAndNumr(int length){     
	    String val = "";     
	    Random random = new Random();     
	    for(int i = 0; i < length; i++){     
	        String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num"; // 输出字母还是数字     
	                 
	        if("char".equalsIgnoreCase(charOrNum)){     
	            int choice = random.nextInt(2) % 2 == 0 ? 65 : 97; //取得大写字母还是小写字母     
	            val += (char) (choice + random.nextInt(26));     
	        }     
	        else if("num".equalsIgnoreCase(charOrNum)){     
	            val += String.valueOf(random.nextInt(9)+1);     
	        }     
	    }     
	    return val;     
	} 
	
	/******************************* 随 机 类 工 具 方 法*******************************/
	/**
	 * 根据输入的长度，随机生成字母字符串
	 * @param length
	 * @return
	 */
	public static String getRdomChar(int length){     
	    String val = "";     
	    Random random = new Random();     
	    for(int i = 0; i < length; i++){                 
            int choice = random.nextInt(2) % 2 == 0 ? 65 : 97; //取得大写字母还是小写字母     
            val += (char) (choice + random.nextInt(26));     
	    }     
	    return val;     
	} 
	
	/**
	 * 根据输入的数字，随机生成Color
	 * @param fc
	 * @param bc
	 * @return
	 */
	public static Color getRandomColor(int fc,int bc){
		Random random = new Random();
		if(fc > 255) fc = 255;
		if(bc > 255) bc = 255;
		int r = fc + random.nextInt(bc-fc);
		int g = fc + random.nextInt(bc-fc);
		int b = fc + random.nextInt(bc-fc);
		return new Color(r,g,b);
	}
	
	
	/**
	 * 生产随机验证码
	 * @param request
	 * @param response
	 * @return
	 */
	@SuppressWarnings({ "unused", "deprecation" })
	public static String getVerifyImg(HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session){
		String result = null;
		int width = 90;
		int height = 32;
		try {
			//建议BufferdImage 对象
			BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
			//响应的输出流
			//OutputStream os = response.getOutputStream();
			
			//创建Graphics对象的画布
			Graphics gc = image.getGraphics();
			//绘制图片背景
			Random random = new Random();
			gc.setColor(Color.lightGray);//YzUtil.getRandomColor(200, 250)
			gc.fillRect(0, 0, width, height);
			
			//设置字体
			gc.setFont(new Font("console",Font.BOLD,15));
			
			/*
			//设置干扰线颜色
			gc.setColor(getRandomColor(100, 250));
			for(int i=0; i < 155 ; i++){
				int x = random.nextInt(width);
				int y = random.nextInt(height);
				int x1 = random.nextInt(50);
				int y1 = random.nextInt(50); 
				gc.drawLine(x, y, x1, y1);
			} 
			*/
			gc.setColor(Color.GRAY);
			String verifyCode = YzUtil.getCharAndNumr(6) ;
			gc.drawString(verifyCode, 15, 22);
			gc.dispose();
			//定义路径
		
			String uploadPath = request.getRealPath("/upload");
			String filePath = uploadPath +"//verify.png";
			File file = new File(uploadPath);
			if(!file.exists()){
				file.mkdirs();
			}
			File uploadfile = new File(filePath);
			ImageIO.write(image, "png", uploadfile);
			session.setAttribute("verifyCode", verifyCode);
			result = uploadfile.getName();
			image.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	/******************************* 加密 解密工 具 方 法*******************************/
	
    /**
     *  
    * @Title: string2MD5
    * @Description: MD5加码 生成32位md5码 
    * @author yuanzhong
    * @param @param inStr
    * @param @return
    * @return String
    * @throws
     */
    public static String string2MD5(String inStr){  
        MessageDigest md5 = null;  
        try{  
            md5 = MessageDigest.getInstance("MD5");  
        }catch (Exception e){  
            System.out.println(e.toString());  
            e.printStackTrace();  
            return "";  
        }  
        char[] charArray = inStr.toCharArray();  
        byte[] byteArray = new byte[charArray.length];  
  
        for (int i = 0; i < charArray.length; i++)  
            byteArray[i] = (byte) charArray[i];  
        byte[] md5Bytes = md5.digest(byteArray);  
        StringBuffer hexValue = new StringBuffer();  
        for (int i = 0; i < md5Bytes.length; i++){  
            int val = ((int) md5Bytes[i]) & 0xff;  
            if (val < 16)  
                hexValue.append("0");  
            hexValue.append(Integer.toHexString(val));  
        }  
        return hexValue.toString();  
    }
    
    
    /**
     *   
    * @Title: encryptMD5
    * @Description: 加密算法 执行一次加密 
    * @author yuanzhong
    * @param @param inStr
    * @param @return
    * @return String
    * @throws
     */
    public static String encryptMD5(String inStr){  
  
        char[] a = inStr.toCharArray();  
        for (int i = 0; i < a.length; i++){  
            a[i] = (char) (a[i] ^ 't');  
        }  
        String s = new String(a);  
        return s;  
  
    }  
    
    
    /**
     *   
    * @Title: decodeMD5
    * @Description: 解密算法,即加密两次就是解密 
    * @author yuanzhong
    * @param @param inStr
    * @param @return
    * @return String
    * @throws
     */
    public static String decodeMD5(String inStr){  
        return encryptMD5(encryptMD5(inStr)) ;
  
    }  
    
    
    /** 
     * 获得MD5加密密码的方法 
     */  
    public static String encryptPwd(String pwd) {  
        String origMD5 = null;  
        try {  
            MessageDigest md5 = MessageDigest.getInstance("MD5");  
            byte[] result = md5.digest(pwd.getBytes());  
            origMD5 = byteArray2HexStr(result);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        return origMD5;  
    }  
    /** 
     * 处理字节数组得到MD5密码的方法 
     */  
    private static String byteArray2HexStr(byte[] bs) {  
        StringBuffer sb = new StringBuffer();  
        for (byte b : bs) {  
            sb.append(byte2HexStr(b));  
        }  
        return sb.toString();  
    }  
    /** 
     * 字节标准移位转十六进制方法 
     */  
    private static String byte2HexStr(byte b) {  
        String hexStr = null;  
        int n = b;  
        if (n < 0) {  
            //若需要自定义加密,请修改这个移位算法即可  
            n = b & 0x7F + 128;  
        }  
        hexStr = Integer.toHexString(n / 16) + Integer.toHexString(n % 16);  
        return hexStr.toUpperCase();  
    }
    
    /** 
     * 提供一个MD5多次加密方法 
     */  
    public static String encryptPwd(String pwd, int times) {  
        String md5 = encryptPwd(pwd);  
        for (int i = 0; i < times - 1; i++) {  
            md5 = encryptPwd(md5);  
        }  
        return encryptPwd(md5);  
    }  
    /** 
     * 密码验证方法 
     */  
    public static boolean verifyPwd(String pwd, String encryptedStr) {  
        return encryptPwd(pwd).equals(encryptedStr);  
    }  
  
    /** 
     * 重载一个多次加密时的密码验证方法 
     */  
    public static boolean verifyPwd(String pwd, String encryptedStr, int times) {  
        return encryptPwd(pwd, times).equals(encryptedStr);  
    }
    
//------------------------------------------------------------------------------------
    /**
     * 
     * @Description: 通过Key在Map中查询值
     * @param @param map
     * @param @param key
     * @param @return   
     * @return Object  
     * @throws
     * @author yuanzhong
     * @date 2015年5月6日 下午9:52:22
     */
    public static Object getMapInValue(Map<Object, Object> map,Object key){
    	if((map != null && map.size() > 0) && key != null){
			for(Map.Entry<Object, Object> entry:map.entrySet()){
				if(entry.getKey() == key){
					return entry.getValue();
				}
			}
    	}
    	return null;
    }
    
    /**
     * @Description: 格式化数字长度,不足位数自动补0
     * @param:  code
     * @author: yuanzhong
     * @date: 2015年6月24日
     */
    public static String formatCode(Object code){
    	if(code == null) return null;
        // 正则 %0nd%   
        return String.format("%0"+Constants.CODE_NO_LENGTH+"d", code);      
    }
    
    /**
     * @Description: 根据指定长度格式化数字长度,不足位补0
     * @param:  code
     * @param:  length
     * @param: @return   
     * @author: yuanzhong
     * @date: 2015年6月24日
     */
    public static String formatCode(Object code,Integer length){
    	if(code == null) return null;
    	if(length == null || length == 0) length = Constants.CODE_NO_LENGTH;
        // 正则 %0nd%   
        return String.format("%0"+length+"d", code);      
    }
    
}
