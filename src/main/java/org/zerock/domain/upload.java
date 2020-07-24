package org.zerock.domain;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Random;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class upload {
	Random rd = new Random();
	
	final String firstPath = "C:\\Users\\User\\Desktop\\a_finalproject3\\src\\main\\webapp\\resources\\img\\";
	
	public String uploadFileName( MultipartFile file) {
		
	long time = System.currentTimeMillis(); 
	
	SimpleDateFormat simpl = new SimpleDateFormat("yyyy-MM-dd-aa-hh-mm-ss");
		
	String simage = simpl.format(time); 
	
	
	
	return firstPath+rd.nextInt(100)+simage+file.getOriginalFilename().replace(" ","");
		
	
	}
	
	
	public String fileUpload(MultipartFile file,String path) {
	
		 try(

            InputStream in = file.getInputStream();				// 보내온 파일정보 읽기

            FileOutputStream fos = new FileOutputStream(path)){	// 파일 어디다 저장할건지 셋팅

            int readCount = 0;

            byte[] buffer = new byte[512];

            while((readCount = in.read(buffer)) != -1){			// 카운트가 -1이 아닐때 실행

                fos.write(buffer,0,readCount);					// 데이터 지정된 경로에다 저장
            
            }

        }catch(Exception ex){

            ex.printStackTrace();

        }
	    
		
		return path;											// 이미지 저장된 경로를 리턴
		
	}
	
	
	
}
