package com.liyao.backend.authentication.service;


import com.baomidou.mybatisplus.service.IService;
import com.liyao.backend.authentication.model.SysDict;

/**
 * Created by zhh on 2018/11/11.
 */
public interface SysDictService extends IService<SysDict> {
    default void haha() {
        System.out.println("成哥最帅");

    }
}
