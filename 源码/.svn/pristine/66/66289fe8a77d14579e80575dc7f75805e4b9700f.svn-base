package com.buaa.hr.manager;

import java.awt.Color;
import java.io.FileOutputStream;
import java.util.List;

import com.buaa.hr.entity.ScheduledEmployees;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

public class PdfDocumentManager {
	public void PdfWrite(List list){
		 Document document = new Document();
	        try {
	        	FileOutputStream fileOut = new FileOutputStream("C://apache-tomcat-6.0.20//webapps//Hrm//cache//TransferRecord.pdf");
	            PdfWriter.getInstance(document,fileOut);
	            document.open();
	            
	            PdfPTable table = new PdfPTable(6);
	            BaseFont bfChinese = BaseFont.createFont("STSongStd-Light", "UniGB-UCS2-H", false);   
	            
	            Font fontChinese = new Font(bfChinese, 16, Font.BOLD, Color.BLACK);
	            Font fontChinese1 = new Font(bfChinese, 14,Font.NORMAL,Color.BLACK);
	            
	            /*PdfPCell cell1 = new PdfPCell(new Paragraph("员工ID",fontChinese));
	            table.addCell(cell1);*/
	            
	            PdfPCell cell1 = new PdfPCell();
	            Paragraph para1 = new Paragraph("员工ID",fontChinese);
	            //设置该段落为水平居中显示
	            para1.setAlignment(1);
	            cell1.addElement(para1);
	            //设置垂直居中
	            cell1.setUseAscender(true);
	            cell1.setUseDescender(true);
	            cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);
	            //提交这个格子
	            table.addCell(cell1);
	            
	            PdfPCell cell2 = new PdfPCell();
	            Paragraph para2 = new Paragraph("员工姓名",fontChinese);
	            para2.setAlignment(1);
	            cell2.addElement(para2);
	            cell2.setUseAscender(true);
	            cell2.setUseDescender(true);
	            cell2.setVerticalAlignment(Element.ALIGN_MIDDLE);
	            table.addCell(cell2);
	            
	            PdfPCell cell3 = new PdfPCell();
	            Paragraph para3 = new Paragraph("性别",fontChinese);
	            para3.setAlignment(1);
	            cell3.addElement(para3);
	            cell3.setUseAscender(true);
	            cell3.setUseDescender(true);
	            cell3.setVerticalAlignment(Element.ALIGN_MIDDLE);
	            table.addCell(cell3);
	          
	            PdfPCell cell4 = new PdfPCell();
	            Paragraph para4 = new Paragraph("调动时间",fontChinese);
	            para4.setAlignment(1);
	            cell4.addElement(para4);
	            cell4.setUseAscender(true);
	            cell4.setUseDescender(true);
	            cell4.setVerticalAlignment(Element.ALIGN_MIDDLE);
	            table.addCell(cell4);
	          
	            PdfPCell cell5 = new PdfPCell();
	            Paragraph para5 = new Paragraph("前任部门",fontChinese);
	            para5.setAlignment(1);
	            cell5.addElement(para5);
	            cell5.setUseAscender(true);
	            cell5.setUseDescender(true);
	            cell5.setVerticalAlignment(Element.ALIGN_MIDDLE);
	            table.addCell(cell5);
	            
	            PdfPCell cell6 = new PdfPCell();
	            Paragraph para6 = new Paragraph("现任部门",fontChinese);
	            para6.setAlignment(1);
	            cell6.addElement(para6);
	            cell6.setUseAscender(true);
	            cell6.setUseDescender(true);
	            cell6.setVerticalAlignment(Element.ALIGN_MIDDLE);
	            table.addCell(cell6);
	          
	            table.completeRow();//!!!提交列
	            
	            for(int i=0;i<list.size();i++){
	            	ScheduledEmployees emp = (ScheduledEmployees)list.get(i);
	            	PdfPCell cella = new PdfPCell();
		            Paragraph paraa = new Paragraph(Integer.toString(emp.getEmployeeId()),fontChinese1);
		            paraa.setAlignment(1);
		            cella.addElement(paraa);
		            cella.setUseAscender(true);
		            cella.setUseDescender(true);
		            cella.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            table.addCell(cella);
		            
		            PdfPCell cellb = new PdfPCell();
		            Paragraph parab = new Paragraph(new Paragraph(emp.getEmployeeName(),fontChinese1));
		            parab.setAlignment(1);
		            cellb.addElement(parab);
		            cellb.setUseAscender(true);
		            cellb.setUseDescender(true);
		            cellb.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            table.addCell(cellb);
		            
		            PdfPCell cellc = new PdfPCell();
		            Paragraph parac = new Paragraph(emp.getEmployeeSex(),fontChinese1);
		            parac.setAlignment(1);
		            cellc.addElement(parac);
		            cellc.setUseAscender(true);
		            cellc.setUseDescender(true);
		            cellc.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            table.addCell(cellc);
		           
		            PdfPCell celld = new PdfPCell();
		            Paragraph parad = new Paragraph(emp.getScheduleTime(),fontChinese1);
		            parad.setAlignment(1);
		            celld.addElement(parad);
		            celld.setUseAscender(true);
		            celld.setUseDescender(true);
		            celld.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            table.addCell(celld);
		            
		            String befDep = null;
		            String aftDep = null;
		            int x = Integer.parseInt(emp.getBeforeSchedule());
		            int y = Integer.parseInt(emp.getAfterSchedule());
		            switch (x){
		            	case 1:befDep="产品部";break;
		            	case 2:befDep="技术部";break;
		            	case 3:befDep="运营部";break;
		            	case 4:befDep="财务部";break;
		            	case 5:befDep="行政部";break;
		            	case 6:befDep="人事部";break;
		            	case 7:befDep="市场部";break;
		            	case 234:befDep="微软分部";break;
		            	
		            }
		            switch (y){
		            	case 1:aftDep="产品部";break;
		            	case 2:aftDep="技术部";break;
		            	case 3:aftDep="运营部";break;
		            	case 4:aftDep="财务部";break;
		            	case 5:aftDep="行政部";break;
		            	case 6:aftDep="人事部";break;
		            	case 7:aftDep="市场部";break;
		            	case 234:aftDep="微软分部";break;
	            	
	            }
		            
		            PdfPCell celle = new PdfPCell();
		            Paragraph parae = new Paragraph(befDep,fontChinese1);
		            parae.setAlignment(1);
		            celle.addElement(parae);
		            celle.setUseAscender(true);
		            celle.setUseDescender(true);
		            celle.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            table.addCell(celle);
		            
		            PdfPCell cellf = new PdfPCell();
		            Paragraph paraf = new Paragraph(aftDep,fontChinese1);
		            paraf.setAlignment(1);
		            cellf.addElement(paraf);
		            cellf.setUseAscender(true);
		            cellf.setUseDescender(true);
		            cellf.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            cellf.setUseAscender(true);
		            cellf.setUseDescender(true);
		            cellf.setVerticalAlignment(Element.ALIGN_MIDDLE);
		            table.addCell(cellf);
		            
		            table.completeRow();
	            }
	            
	            document.add(table);
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            document.close();
	            
	        }
	}
	
	public void pdfDownload(){
		
	}
}
