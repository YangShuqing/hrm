package com.buaa.hr.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
//演示用commons-fileupload进行文件的上传
public class UploadServlet2 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		//构建对象：DiskFileItemFactory
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//判断用户的表单是不是multipart/form-data类型的
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if(!isMultipart){
			throw new RuntimeException("没有大脑");
		}
		//创建ServletFileUpload的实例
		ServletFileUpload sfu = new ServletFileUpload(factory);
		//解析请求对象
		try {
			List<FileItem> items = sfu.parseRequest(request);
			for(FileItem item:items){
				if(item.isFormField()){
					//普通字段
					processFormField(item);
				}else{
					processUploadField(item);
				}
			}
			response.getWriter().write("上传成功");
		} catch (FileUploadException e) {
			throw new RuntimeException("解析请求正文失败，请换一个浏览器试试");
		}
	}
	//处理上传字段
	private void processUploadField(FileItem item) {
		//把上传文件存到/files目录中
		String realPath = getServletContext().getRealPath("/files");
		File storeDirectory = new File(realPath);
		if(!storeDirectory.exists()){
			storeDirectory.mkdir();
		}
		//获取文件名
		String filename = item.getName();//  c:\desktop\a.txt        a.txt
		//filename = filename.substring(filename.lastIndexOf("\\")+1);
		if(filename!=null){
			filename = FilenameUtils.getName(filename);
		}
		//上传
		try {
			/*
			InputStream in = item.getInputStream();
			OutputStream out = new FileOutputStream(realPath+"//"+filename);
			
			int len = -1;
			byte b[] = new byte[1024];
			while((len=in.read(b))!=-1){
				out.write(b, 0, len);
			}
			in.close();
			out.close();
			*/
			
			item.write(new File(realPath, filename));
			
		} catch (Exception e) {
			System.out.println("文件上传失败");
		}
		
	}
	//普通表单字段：打印到控制台
	private void processFormField(FileItem item) {
		String fieldName = item.getFieldName();
		String fieldValue = item.getString();
		System.out.println(fieldName+":"+fieldValue);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
