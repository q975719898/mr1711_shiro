package com.mr.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by czl on 2018/5/28.
 */
@Controller
@RequestMapping("dpment")
public class DepartmentController {


    @RequestMapping("todpm")
    public String todpm(){
        return "dpm";
    }

    @RequiresPermissions("dpment:save")
    @RequestMapping("save")
    public  String save(){
        System.out.println("调用部门新增方法");
        return "dpm";
    }
    @RequiresPermissions("dpment:delete")
    @RequestMapping("delete")
    public  String delete(){
        System.out.println("调用部门删除方法");
        return "dpm";
    }
    @RequiresPermissions("dpment:update")
    @RequestMapping("update")
    public  String update(){
        System.out.println("调用部门修改方法");
        return "dpm";
    }
}


