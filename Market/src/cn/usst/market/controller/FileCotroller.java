package cn.usst.market.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileCotroller {
	/**
	 * 单文件上传
	 * 
	 * @param file
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/fileUpload.do")
	public ModelAndView fileUpload(MultipartFile file, HttpServletRequest request) throws Exception {
		// 获得当前下载位置在服务器上的绝对路径,本项目中为D:\eclipse\tomcat\apache-tomcat-7.0.77\webapps\Market\\upload
		// String path = request.getServletContext().getRealPath("upload");
		// 指定一个文件上传的路径(本地硬盘)
		String path = "D:\\eclipse\\tomcat\\apache-tomcat-7.0.77\\webapps\\upload";
		System.out.println(path);
		// 获取文件原始名
		String fileName = file.getOriginalFilename();
		// 解决重复上传文件的问题
		fileName = UUID.randomUUID() + "#" + fileName;
		System.out.println(fileName);
		File dir = new File(path, fileName);
		// mkdir（）创建此抽象路径名称指定的目录（及只能创建一级的目录，且需要存在父目录）
		// mkdirs（）创建此抽象路径指定的目录，包括所有必须但不存在的父目录。（及可以创建多级目录，无论是否存在父目录）
		if (!dir.exists()) {
			dir.mkdirs();
		}
		String filePath = dir.getAbsolutePath();
		System.out.println(filePath);
		// MultipartFile自带的解析方法,将文件上传到指定的位置
		file.transferTo(dir);
		ModelAndView modelAndView = new ModelAndView();
		request.getSession().setAttribute("file", filePath);
		modelAndView.setViewName("fileUpload1");
		return modelAndView;

	}

	/**
	 * 多文件上传
	 * 
	 * @param files
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/multiPartFileUpload.do")
	public ModelAndView multiFileUpload(@RequestParam("files") CommonsMultipartFile files[], HttpServletRequest request)
			throws Exception {
		// 获取文件的上传位置(上传到Tomcat服务器)
		String path = request.getServletContext().getRealPath("upload");
		MultipartFile mpf = null;
		List<String> fileList = new ArrayList<String>();
		ModelAndView modelAndView = new ModelAndView();
		for (int i = 0; i < files.length; i++) {
			// 逐个读取文件
			mpf = files[i];
			String fileName = mpf.getOriginalFilename();
			// 解决重复上传文件的问题
			fileName = UUID.randomUUID() + "#" + fileName;
			File dir = new File(path, fileName);
			// 创建文件夹
			if (!dir.exists()) {
				dir.mkdirs();
			}
			// 上传到指定位置
			mpf.transferTo(dir);
			fileList.add(fileName);
		}
		request.getSession().setAttribute("fileList", fileList);
		modelAndView.setViewName("fileUpload2");
		return modelAndView;

	}

	/**
	 * 文件下载
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/fileDownload.do")
	public ModelAndView fileDownload(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取文件名,可以自定义的文件名
		String fileName = request.getParameter("file_name");
		System.out.println(fileName);
		// 转码，免得文件名中文乱码
		fileName = URLEncoder.encode(fileName, "UTF-8");
		// 获取要下载的文件的地址
		String fileFullPath = "D:\\eclipse\\tomcat\\apache-tomcat-7.0.77\\webapps\\Market\\upload\\"
				+ request.getParameter("file");
		System.out.println(fileFullPath);
		try {
			// 获取输入流
			@SuppressWarnings("resource")
			InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileFullPath)));
			// 设置文件下载头
			response.addHeader("Content-Disposition", "attachment;fileName=" + fileName);
			// 1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
			response.setContentType("multipart/form-data");
			BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
			int len = 0;
			// 逐个字节读取
			while ((len = bis.read()) != -1) {
				out.write(len);
				out.flush();
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("fileUpload2");
		return modelAndView;
	}
}
