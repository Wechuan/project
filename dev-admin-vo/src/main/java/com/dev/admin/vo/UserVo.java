package com.dev.admin.vo;

import com.dev.admin.entity.User;

/**
 * 用户视图对象
 * Created by 风象南(yuboon) on 2019/02/24
 */
public class UserVo extends User {

    public String getRegionText() {

        /*<option value="0">北京</option>
        <option value="1">上海</option>
        <option value="2">广州</option>
        <option value="3">深圳</option>
        <option value="4">西安</option>*/

        if(this.getRegion() == 0){
            return "北京";
        }

        if(this.getRegion() == 1){
            return "上海";
        }

        if(this.getRegion() == 2){
            return "广州";
        }

        if(this.getRegion() == 3){
            return "深圳";
        }

        if(this.getRegion() == 4){
            return "西安";
        }

        return "未知";
    }

}
