package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShopCatagory implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    套餐名
    private String catagoryName;
//    父级id（顶级为0）'
    private Integer parentId;

    private Date createdAt;


}