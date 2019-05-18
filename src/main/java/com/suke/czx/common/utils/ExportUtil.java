package com.suke.czx.common.utils;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/*import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.noboss.entity.ExportT;
import com.thinkgem.jeesite.modules.noboss.entity.KpiSysCompony;
import com.thinkgem.jeesite.modules.noboss.entity.Kpiuser;
import com.thinkgem.jeesite.modules.noboss.entity.Test;
import com.thinkgem.jeesite.modules.noboss.service.KpisysuserService;
import com.thinkgem.jeesite.modules.noboss.service.KpiSysComponyService;
import com.thinkgem.jeesite.modules.noboss.service.KpiSysDeptService;*/
@Component
public class ExportUtil {

	/*
	 * @Autowired private KpisysuserService KpisysuserService;
	 * 
	 * @Autowired private KpiSysComponyService KpiSysComponyService;
	 * 
	 * @Autowired private KpiSysDeptService KpiSysDeptService;
	 */
	 // 静态初使化当前类
    public static ExportUtil ExportUtil;

    // 在方法上加上注解@PostConstruct，这样方法就会在Bean初始化之后被Spring容器执行（注：Bean初始化包括，实例化Bean，并装配Bean的属性（依赖注入））。
    @PostConstruct
    public void init() {
    	ExportUtil = this;
    	
    }

	/**
	 * 
	 * @Title: Jtranslate
	 * @Description: TODO
	 * @param: @param jiaose
	 * @param: @return
	 * @return: String
	 * @throws
	 */
	// 数据库角色中文
	public static String Jtranslate(String jiaose) {
		if (jiaose == null) {
			return null;
		}
		int i = Integer.parseInt(jiaose);
		switch (i) {
		case 0:
			return "智多星";
		case 1:
			return "资源调查员";
		case 2:
			return "协调者";
		case 3:
			return "鞭策者";
		case 4:
			return "监督评论员";
		case 5:
			return "凝聚者";
		case 6:
			return "实干家";
		case 7:
			return "善始善终者";
		case 8:
			return "专家";
		case 9:
			return "撒谎指数";
		}
		return null;

	}

	/**
	 * 
	 * @Title: headerList
	 * @Description: TODO
	 * @param: @return
	 * @return: String[]
	 * @throws
	 */
	// 设置表头
	public static String[] headerList() {
		String[] headerList = new String[50];
		headerList[0] = ("姓名");
		headerList[1] = ("年龄");
		headerList[2] = ("性别");
		headerList[3] = ("公司");
		headerList[4] = ("部门");
		headerList[5] = ("职位");
		headerList[6] = ("手机");
		headerList[7] = ("结果");
		headerList[8] = ("时间");
		headerList[9] = ("PL");
		headerList[10] = ("RI");
		headerList[11] = ("CO");
		headerList[12] = ("SH");
		headerList[13] = ("ME");
		headerList[14] = ("TW");
		headerList[15] = ("IM");
		headerList[16] = ("CF");
		headerList[17] = ("SP");
		headerList[18] = ("DR");
		headerList[19] = ("分享员工");
		headerList[20] = ("分享公司");
		return headerList;
	}

	/**
	 * 
	 * @Title: Col
	 * @Description: TODO
	 * @param: @return
	 * @return: String[]
	 * @throws
	 */
	public static String[] Col() {
		String[] Col = new String[50];
		Col[0] = ("name");
		Col[1] = ("age");
		Col[2] = ("sex");
		Col[3] = ("company");
		Col[4] = ("department");
		Col[5] = ("title");
		Col[6] = ("phone");
		Col[7] = ("chara");
		Col[8] = ("currentime");
		Col[9] = ("PL");
		Col[10] = ("RI");
		Col[11] = ("CO");
		Col[12] = ("SH");
		Col[13] = ("ME");
		Col[14] = ("TW");
		Col[15] = ("IM");
		Col[16] = ("CF");
		Col[17] = ("SP");
		Col[18] = ("DR");
		Col[19] = ("shareId");
		Col[20] = ("shareComId");
		return Col;
	}

	/**
	 * 
	 * @Title: shareId
	 * @Description: TODO
	 * @param: @param shareIdS
	 * @param: @return
	 * @return: String
	 * @throws
	 */
	// 分享员工
	/*
	 * public static String shareId(String shareIdS) { if ("".equals(shareIdS)) {
	 * int shareId = Integer.parseInt(shareIdS); Kpiuser kpiuser =
	 * ExportUtil.KpisysuserService.selectByPrimaryKey(shareId); if
	 * (kpiuser.getName() != null) { return kpiuser.getName(); } } return null; }
	 */
	/**
	 * 
	 * @Title: gender
	 * @Description: TODO
	 * @param: @param gender
	 * @param: @return
	 * @return: String
	 * @throws
	 */
	public static String gender(String gender) {

		if (gender == null) {
			return null;
		}
		int i = Integer.parseInt(gender);
		switch (i) {
		case 0:
			return "未设置";
		case 1:
			return "男";
		case 2:
			return "女";

		}
		return null;
	}

	/**
	 * 
	 * @Title: compony
	 * @Description: TODO
	 * @param: @param compony
	 * @param: @return
	 * @return: String
	 * @throws
	 */

	/*public static String compony(String compony) {

		if (compony != null) {
			int componyId = Integer.parseInt(compony);
			KpiSysCompony kpiSysCompony = ExportUtil.KpiSysComponyService
					.selectByPrimaryKey(componyId);
			if (kpiSysCompony.getName() != null) {
				return kpiSysCompony.getName();
			}
		}
		return null;
	}*/

	/*
	 * public static String shareComId(String shareComId){
	 * 
	 * if(shareComId==null){ return null; } int i=Integer.parseInt(shareComId);
	 * switch(i){ case 1: return "深圳市禧人科技有限公司"; case -1: return "深圳市禧人科技有限公司";
	 * case 2: return "women";
	 * 
	 * } return null; }
	 */

}



