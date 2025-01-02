package com.service.impl;


import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import com.dao.JiequyonghuDao;
import com.entity.JiequyonghuEntity;
import com.service.JiequyonghuService;
import com.entity.view.JiequyonghuView;

/**
 * 接取用户 服务实现类
 */
@Service("jiequyonghuService")
@Transactional
public class JiequyonghuServiceImpl extends ServiceImpl<JiequyonghuDao, JiequyonghuEntity> implements JiequyonghuService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        Page<JiequyonghuView> page = new Query<JiequyonghuView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page, params));
        return new PageUtils(page);
    }
}
