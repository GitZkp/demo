package com.suke.czx.common.utils;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ScoreUtil {

	// 测试数据
	//定义数据格式
	//总10道题，每道题之间用;隔开，每个答案之间用逗号隔开
	//private String answer = "A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0;A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0;A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0,A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0,A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0,A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0,A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0，A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0，A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0，A:1,B:3,C:3,D:3,E:0,F:0,G:0,H:0,I:0,J:0";

	//打分方法
	public static  int[] score(String json){
		JSONArray arr = JSONArray.fromObject(json);
		
	    
		 JSONObject temp0 = (JSONObject) arr.get(0); 
		 JSONObject temp1 = (JSONObject) arr.get(1); 
		 JSONObject temp2 = (JSONObject) arr.get(2); 
		 JSONObject temp3 = (JSONObject) arr.get(3); 
		 JSONObject temp4 = (JSONObject) arr.get(4); 
		 JSONObject temp5 = (JSONObject) arr.get(5); 
		 JSONObject temp6 = (JSONObject) arr.get(6); 
		 
		 int PL=Integer.parseInt(String.valueOf (temp0.get("D")))+Integer.parseInt(String.valueOf (temp1.get("I")))+Integer.parseInt(String.valueOf (temp2.get("D")))+Integer.parseInt(String.valueOf (temp3.get("F")))+Integer.parseInt(String.valueOf (temp4.get("H")))+Integer.parseInt(String.valueOf (temp5.get("C")))+Integer.parseInt(String.valueOf (temp6.get("F")));
		 int RI=Integer.parseInt(String.valueOf (temp0.get("A")))+Integer.parseInt(String.valueOf (temp1.get("D")))+Integer.parseInt(String.valueOf (temp2.get("G")))+Integer.parseInt(String.valueOf (temp3.get("H")))+Integer.parseInt(String.valueOf (temp4.get("E")))+Integer.parseInt(String.valueOf (temp5.get("J")))+Integer.parseInt(String.valueOf (temp6.get("D")));
		 int CO=Integer.parseInt(String.valueOf (temp0.get("E")))+Integer.parseInt(String.valueOf (temp1.get("B")))+Integer.parseInt(String.valueOf (temp2.get("A")))+Integer.parseInt(String.valueOf (temp3.get("J")))+Integer.parseInt(String.valueOf (temp4.get("F")))+Integer.parseInt(String.valueOf (temp5.get("E")))+Integer.parseInt(String.valueOf (temp6.get("G")));
		 int SH=Integer.parseInt(String.valueOf (temp0.get("H")))+Integer.parseInt(String.valueOf (temp1.get("G")))+Integer.parseInt(String.valueOf (temp2.get("C")))+Integer.parseInt(String.valueOf (temp3.get("C")))+Integer.parseInt(String.valueOf (temp4.get("D")))+Integer.parseInt(String.valueOf (temp5.get("I")))+Integer.parseInt(String.valueOf (temp6.get("A")));
		 int ME=Integer.parseInt(String.valueOf (temp0.get("J")))+Integer.parseInt(String.valueOf (temp1.get("F")))+Integer.parseInt(String.valueOf (temp2.get("I")))+Integer.parseInt(String.valueOf (temp3.get("D")))+Integer.parseInt(String.valueOf (temp4.get("A")))+Integer.parseInt(String.valueOf (temp5.get("G")))+Integer.parseInt(String.valueOf (temp6.get("B")));
		 int TW=Integer.parseInt(String.valueOf (temp0.get("C")))+Integer.parseInt(String.valueOf (temp1.get("H")))+Integer.parseInt(String.valueOf (temp2.get("E")))+Integer.parseInt(String.valueOf (temp3.get("A")))+Integer.parseInt(String.valueOf (temp4.get("C")))+Integer.parseInt(String.valueOf (temp5.get("D")))+Integer.parseInt(String.valueOf (temp6.get("J")));
		 int IM=Integer.parseInt(String.valueOf (temp0.get("I")))+Integer.parseInt(String.valueOf (temp1.get("A")))+Integer.parseInt(String.valueOf (temp2.get("J")))+Integer.parseInt(String.valueOf (temp3.get("E")))+Integer.parseInt(String.valueOf (temp4.get("B")))+Integer.parseInt(String.valueOf (temp5.get("H")))+Integer.parseInt(String.valueOf (temp6.get("E")));
		 int CF=Integer.parseInt(String.valueOf (temp0.get("F")))+Integer.parseInt(String.valueOf (temp1.get("J")))+Integer.parseInt(String.valueOf (temp2.get("B")))+Integer.parseInt(String.valueOf (temp3.get("G")))+Integer.parseInt(String.valueOf (temp4.get("G")))+Integer.parseInt(String.valueOf (temp5.get("F")))+Integer.parseInt(String.valueOf (temp6.get("C")));
		 int SP=Integer.parseInt(String.valueOf (temp0.get("G")))+Integer.parseInt(String.valueOf (temp1.get("C")))+Integer.parseInt(String.valueOf (temp2.get("H")))+Integer.parseInt(String.valueOf (temp3.get("B")))+Integer.parseInt(String.valueOf (temp4.get("I")))+Integer.parseInt(String.valueOf (temp5.get("B")))+Integer.parseInt(String.valueOf (temp6.get("I")));
		 int DR=Integer.parseInt(String.valueOf (temp0.get("B")))+Integer.parseInt(String.valueOf (temp1.get("E")))+Integer.parseInt(String.valueOf (temp2.get("F")))+Integer.parseInt(String.valueOf (temp3.get("I")))+Integer.parseInt(String.valueOf (temp4.get("J")))+Integer.parseInt(String.valueOf (temp5.get("A")))+Integer.parseInt(String.valueOf (temp6.get("H")));
		 int[] arrint = new int[10]  ;
		 
			 if(PL>22){
				 PL=22;
			 }
			 if(RI>22){
				 RI=22;
			 }
			 if(CO>22){
				 CO=22;
			 }
			 if(SH>22){
				 SH=22;
			 }
			 if(ME>22){
				 ME=22;
			 }
			 if(TW>22){
				 TW=22;
			 }
			 if(IM>22){
				 IM=22;
			 }
			 if(CF>22){
				 CF=22;
			 }
			 if(SP>22){
				 SP=22;
			 }
			 if(DR>22){
				 DR=22;
			 }
			 
			arrint[0]=PL;
			 arrint[1]=RI;
			 arrint[2]=CO;
			 arrint[3]=SH;
			 arrint[4]=ME;
			 arrint[5]=TW;
			 arrint[6]=IM;
			 arrint[7]=CF;
			 arrint[8]=SP;
			 arrint[9]=DR;
		
		 System.out.print(Arrays.toString(arrint));
		 return arrint;
		 
	}

	//判分方法
	public static int[] character(int PL,int RI,int CO,int SH,int ME,int TW,int IM,int CF,int SP,int DR){
//		int arr[][]={{0,0,0,95,0,0,0,0,0,0},{0,0,0,93,0,0,0,0,0,0},{0,0,0,92,0,0,0,0,0,0},{0,0,0,89,0,0,0,0,0,0},{0,0,0,87,0,0,0,0,0,0},{0,0,0,86,0,0,0,0,0,0},{0,0,95,83,0,0,93,0,0,0},{95,95,93,79,0,95,91,0,0,0},{93,90,91,75,0,94,86,0,0,0},{92,86,90,71,94,89,83,93,92,0},{90,83,86,64,92,83,77,89,89,0},{86,77,82,55,89,79,68,85,85,0},{84,71,80,50,82,74,61,83,77,0},{82,66,72,45,72,67,49,78,74,0},{75,58,64,36,61,60,49,78,74,0},{75,58,64,36,61,60,36,72,69,0},{64,49,55,30,52,49,29,67,64,0},{53,38,48,23,41,37,19,56,53,0},{45,32,29,18,31,27,14,51,46,0},{38,23,19,12,23,19,8,41,30,0},{25,16,11,6,12,12,4,31,24,0},{16,7,6,4,4,6,2,18,11,0},{8,3,3,1,1,1,1,11,8,0}};
		int arr[][]={{8,16,25,38,45,53,64,75,82,84,86,90,92,93,95,101,102,103,104,105,106,107},
				     {3,7,16,23,32,38,49,58,66,71,77,83,86,90,95,101,102,103,104,105,106,107},
				     {3,6,11,19,29,48,55,64,72,80,82,86,90,91,93,95,101,102,103,104,105,106},
				     {1,4,6,12,18,23,30,36,45,50,55,64,71,75,79,83,86,87,89,92,93,95},
				     {1,4,12,23,31,41,52,61,72,82,89,92,94,101,102,103,104,105,106,107,108,109},
				     {1,6,12,19,27,37,49,60,67,74,79,83,89,94,95,101,102,103,104,105,106,107},
				     {1,2,4,8,14,19,29,36,49,61,68,77,83,86,91,93,101,102,103,104,105,106},
				     {11,18,31,41,51,56,67,72,78,83,85,89,93,101,102,103,104,105,106,107,108,109},
				     {8,11,24,30,46,53,64,69,74,77,85,89,92,95,101,102,103,104,105,106,107,108}};
		int[] arrint=new int[10];
		if(true){
			int PLScore;
			if(PL==0){
				PLScore=0;
			}else{
			PLScore=arr[0][PL-1];
			}
			int RIScore;
			if(RI==0){
				RIScore=0;
			}else{
			RIScore=arr[1][RI-1];
			}
			int COScore;
			if(CO==0){
				COScore=0;
			}else{
			COScore=arr[2][CO-1];
			}
			int SHScore;
			if(SH==0){
				SHScore=0;
			}else{
			SHScore=arr[3][SH-1];
			}
			int MEScore;
			if(ME==0){
				MEScore=0;
			}else{
			MEScore=arr[4][ME-1];
			}
			int TWScore;
			if(TW==0){
				TWScore=0;
			}else{
			TWScore=arr[5][TW-1];}
			int IMScore;
			if(IM==0){
				IMScore=0;
			}else{
			IMScore=arr[6][IM-1];}
			int CFScore;
			if(CF==0){
				CFScore=0;
			}else{
			CFScore=arr[7][CF-1];
			}
			int SPScore;
			if(SP==0){
				SPScore=0;
			}else{
			SPScore=arr[8][SP-1];}
			
			
		    
		    arrint[0]=PLScore;
			 arrint[1]=RIScore;
			 arrint[2]=COScore;
			 arrint[3]=SHScore;
			 arrint[4]=MEScore;
			 arrint[5]=TWScore;
			 arrint[6]=IMScore;
			 arrint[7]=CFScore;
			 arrint[8]=SPScore;
          	 arrint[9]=DR;
			 System.out.println(Arrays.toString(arrint));	
				
		 
		}
		return arrint;
	
	}
	//
	/*public static Map<String,Object> headimg(Test test){
		String i=test.getJiaose();
		String describe = null;
		String headimgdir=null;
		if(i==null){
			return null;
		}
		if("0".equals(i)){
			//智多星
			 describe="智多星：姜子牙：智计过人而深谋远虑，忠心耿耿，典型的开国功臣、治世能臣；同时又是亦人亦仙，道法通神，充满玄幻色彩，无往不利的神人。";
			 headimgdir="static/headimg/zhiduoxing.jpg";
		}
		if("1".equals(i)){
			//智多星
			 describe="资源调查员：杨戬：三军未动，粮草先行，杨戬是压粮官，也是一个力挽狂澜的人，屡屡在危难之中独撑大局。被姜子牙评为“智勇双全，功高千古！”";
			 headimgdir="static/headimg/ziyuandiaocha.jpg";
		}
		if("2".equals(i)){
			//智多星
			 describe="协调者：姬发：中国西周王朝开国君主，对内重用贤良，对外争取联合更多诸侯国，壮大力量。在伐纣的过程中，他以大无畏的精神亲自带领兵马直捣朝歌，打了纣王一个措手不及";
			 headimgdir="static/headimg/xietiaozhe.jpg";
		}
		if("3".equals(i)){
			//智多星
			 describe="鞭策者：哪吒：神力通天，法力高强，武功高强，英勇善战，驱邪除恶，诛灭牛鬼蛇神，是妖魔鬼怪的克星，象征着福娃类的福神之尊，被供为斩妖除魔、降龙伏虎的少年英雄。";
			 headimgdir="static/headimg/biancezhe.jpg";
		}
		if("4".equals(i)){
			//智多星
			 describe="监督评论员：李靖：李靖又称托塔天王，是著名的道教护法神，也是中坛元帅哪吒的父亲，协助武王克殷有功，后位列仙班。";
			 headimgdir="static/headimg/jiandupinglun.jpg";
		}
		if("5".equals(i)){
			//智多星
			 describe="凝聚者：姬昌：扼守贫瘠的西岐，胸怀大志且深藏不露，充满韬光养晦和隐忍的智慧。本人擅长算卦，据说伏羲八卦出自其手。";
			 headimgdir="static/headimg/ningjuzhe.jpg";
		}
		if("6".equals(i)){
			//智多星
			 describe="实干家：武成王：五将东征会渑池，时逢七煞数应奇；忠肝化碧犹啼血，义胆成灰永不移。千古英风垂泰岳，万年烟祀祝嵩尸；五方帝位多隆宠，报国孤思史册垂";
			 headimgdir="static/headimg/shiganjia.jpg";
		}
		if("7".equals(i)){
			//智多星
			 describe="善始善终：雷震子：天降雷鸣现虎躯，燕山出世托遗孤。姬侯应产螟蛉子，仙宅当藏不世珠。秘授七年玄妙诀，长生两翅有风雷。桃园传得黄金棍，鸡岭先将圣主扶";
			 headimgdir="static/headimg/shanshishanzhong.jpg";
		}
		if("8".equals(i)){
			//智多星
			 describe="专家：黄天化：西岐方面开始讨伐纣王，在金鸡岭，孔宣先锋官陈庚前来搦战，黄天化出战，大战三十回合之后诈败，以火龙标击杀了陈庚，获得讨伐纣王的首功。";
			 headimgdir="static/headimg/zhuanjia.jpg";
		}
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("describe", describe);
		map.put("headimgdir", headimgdir);
		
		return map;
		*/
	
}
