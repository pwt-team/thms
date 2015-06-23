package com.thms.web;
import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.thms.bean.User;
import com.thms.service.UserService;
import com.thms.util.JsonResult;
import com.thms.util.TmFileUtil;
/**
 * ClassName: UploadController 
 * @Description: 文件上传
 * @author yuanzhong
 * @date 2015年6月20日  上午1:04:11
 */
@Controller
@RequestMapping(value="/upload")
public class UploadController {
	
	@Autowired
	public UserService userService;

	/**
	 * @Description: 文件上传方法
	 * @param: @param file
	 * @param: @param request
	 * @param: @throws IllegalStateException
	 * @param: @throws IOException   
	 * @author:yuanzhong
	 * @date: 2015年6月23日
	 */
	@RequestMapping(value = "/myupload",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult myupload(@RequestParam("doc") MultipartFile file, HttpServletRequest request)
			throws IllegalStateException, IOException {
		JsonResult json = new JsonResult(true);
		json = upload(file, request);
		return json;
	}
	
	
	/**
	 * @Description: 上传用户头像
	 * @param @param file
	 * @param @param request
	 * @param @throws IllegalStateException
	 * @param @throws IOException   
	 * @return JsonResult  
	 * @throws
	 * @author yuanzhong
	 * @date 2015年6月20日 上午1:56:29
	 */
	@RequestMapping(value = "/uploadface",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult uploadface(@RequestParam("doc") MultipartFile file,
			HttpServletRequest request ,@RequestParam Integer uid) throws IllegalStateException, IOException{
		JsonResult json = new JsonResult(true);
		User user  = userService.findUser(uid);
		if(user != null){
			json = upload(file, request);
			user.setFace((String) json.getResult().get("url"));
			userService.update(user);
		}
		return json;
	}
	
	
	
	/**
	 * @Description: 文件上传方法
	 * @param @param file
	 * @param @param request
	 * @param @throws IllegalStateException
	 * @param @throws IOException   
	 * @return JsonResult  
	 * @author yuanzhong
	 * @date 2015年6月20日 上午1:57:44
	 */
	public  JsonResult upload(MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException{
		JsonResult json = new JsonResult(true);
		String directory = request.getParameter("dir");
		if(StringUtils.isEmpty(directory))directory = "upload";
		String rootDir = "resource/"+directory;
		String realPath = request.getServletContext().getRealPath(rootDir);
		File dirPath = new File(realPath);
		// 自动创建上传的upload目录
		if (!dirPath.exists())
			dirPath.mkdirs();
		String oldName = file.getOriginalFilename();
		String oldFileName = request.getParameter("oldName");
		String ext = TmFileUtil.getExtNoPoint(oldName);
		String newName = null;
		if (StringUtils.isNotEmpty(oldFileName)) {
			newName = TmFileUtil.getNotExtName(oldFileName) + "." + ext;
		} else {
			newName = TmFileUtil.generateFileName(oldName, 5, "yyyyMMddHHmmss");
		}
		File targetFile = new File(dirPath, newName);
		file.transferTo(targetFile);// 文件上传
		json.put("name", oldName);// 文件的原始名称
		json.put("newName", newName);// 文件的新名称
		json.put("ext", ext);// 文件的后缀
		json.put("size", file.getSize());// 文件的真实大小
		json.put("sizeString", TmFileUtil.countFileSize(file.getSize()));// 获取文件转换以后的大写
		json.put("url", directory+"/" + newName);// 获取文件的具体服务器的目录
		return json;
	}
	
	
}