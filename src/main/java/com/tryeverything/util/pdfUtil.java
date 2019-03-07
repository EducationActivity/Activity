package com.tryeverything.util;

import com.tryeverything.vo.pdfVO;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.text.PDFTextStripper;

import java.io.File;
import java.io.IOException;

public class pdfUtil {
    /***
     * 创建1到多个空白页面
     * @throws IOException
     */
    public static void createBlank( String outputFile ) throws IOException
    {
        //首先创建pdf文档类
        PDDocument document = null;
        try
        {
            document = new PDDocument();
            //实例化pdf页对象
            PDPage blankPage = new PDPage();
            PDPage blankPage1 = new PDPage();
            PDPage blankPage2 = new PDPage();
            //插入文档类
            document.addPage( blankPage );
            document.addPage( blankPage1 );
            document.addPage( blankPage2 );
            //记得一定要写保存路径,如"H:\\text.pdf"
            document.save( outputFile );
            System.out.println("over");
        }
        finally
        {
            if( document != null )
            {
                document.close();
            }
        }
    }

    /**
     * 读取pdf中文字信息(全部)
     */
    public static void READPDF(String inputFile){
        //创建文档对象
        PDDocument doc =null;
        String content="";
        try {
            //加载一个pdf对象
            doc =PDDocument.load(new File(inputFile));
            //获取一个PDFTextStripper文本剥离对象
            PDFTextStripper textStripper =new PDFTextStripper();
            content=textStripper.getText(doc);
            System.out.println("内容:"+content);
            System.out.println("全部页数"+doc.getNumberOfPages());
            //关闭文档
            doc.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 读取pdf中文字信息(指定从第几页开始)
     */
    public static pdfVO readPageNO(pdfVO vo){
        String content="";
        try{
            PDDocument document = PDDocument.load(new File(vo.getInputfile()));
            // 获取页码
            int pages = document.getNumberOfPages();
            // 读文本内容
            PDFTextStripper stripper=new PDFTextStripper();
            // 设置按顺序输出
            stripper.setSortByPosition(true);
            stripper.setStartPage(vo.getPageno());
            stripper.setEndPage(vo.getPageno());
            //获取内容
            content = stripper.getText(document);
            vo.setContent(content);
            System.out.println("function : readPageNO over");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vo;
    }

    public static void main(String[] args){
        pdfUtil p = new pdfUtil();
//        p.READPDF("D:\\GitWork\\activity\\target\\activity\\static\\uploadPdf\\2019-02-07-22-48-04f58a920353dd49ae814bab21ac0f00e6.pdf\n");
        pdfVO pdf = new pdfVO();
        pdf.setInputfile("D:\\\\GitWork\\\\activity\\\\target\\\\activity\\\\static\\\\uploadPdf\\\\2019-02-07-22-48-04f58a920353dd49ae814bab21ac0f00e6.pdf\n");
        pdf.setPageno(1);
//        p.save(pdf);
        p.readPageNO(pdf);
    }

}