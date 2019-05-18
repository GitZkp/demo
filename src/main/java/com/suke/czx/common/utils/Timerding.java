package com.suke.czx.common.utils;

import java.util.Timer;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class Timerding {
     public void main(String[] args){
    	 ScheduledExecutorService service = Executors
                 .newSingleThreadScheduledExecutor();
    	 service.scheduleAtFixedRate(new TestJob(), 0, 1000, TimeUnit.MILLISECONDS);
    	 /*Timer timer=new Timer(){
    		schedule(new TimerTask{
 				
 				public void run() {
 					File file=new File(tarImgPath+"\\"+content+".jpg");
 					if(file.exists()&&file.isFile()){
 						file.delete();
 						System.out.println("删除成功");
 					}
 				timer.cancel();
 				}},5*1000);*/
    	 
    	 
    	 
     }
     
     static class TestJob implements Runnable {

         int count = 0;

        

         

         public void run() {
//        try {
                 count++;
                 System.out.println("TestJob count : " + count);
                 if (count == 5) {
                     throw new NullPointerException();
                 }
        }
         }
      
     }
//           } catch (Exception e) {
//               e.printStackTrace();
//           }
    
     


