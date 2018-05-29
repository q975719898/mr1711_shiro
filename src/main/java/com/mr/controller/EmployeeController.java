package com.mr.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by czl on 2018/5/28.
 */
@Controller
@RequestMapping("employee")
public class EmployeeController {

    @RequestMapping("toemp")
        public String toemp(){
        return "emp";
        }
    @RequiresPermissions("employee:save")
    @RequestMapping("save")
    public String save(){
        System.out.println("调用新增方法");
        return "emp";
    }
    @RequiresPermissions("employee:delete")
    @RequestMapping("delete")
    public String delete(){
        System.out.println("调用删除方法");
        return "emp";
    }
    @RequiresPermissions("employee:update")
    @RequestMapping("update")
    public String  update(){
        System.out.println("调用修改方法");
        return "emp";
    }
}
