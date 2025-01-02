
package com.service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.Wrapper;//查询条件类
import com.baomidou.mybatisplus.service.IService;//提供基础的数据库操作
import com.entity.UsersEntity;
import com.utils.PageUtils;



public interface UsersService extends IService<UsersEntity> {
 	PageUtils queryPage(Map<String, Object> params);
    
   	List<UsersEntity> selectListView(Wrapper<UsersEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params, Wrapper<UsersEntity> wrapper);
	   	
}
