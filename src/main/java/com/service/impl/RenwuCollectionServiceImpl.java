package com.service.impl;


import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import com.dao.RenwuCollectionDao;
import com.entity.RenwuCollectionEntity;
import com.service.RenwuCollectionService;
import com.entity.view.RenwuCollectionView;

/**
 * 任务收藏 服务实现类
 */
@Service("renwuCollectionService")
@Transactional
public class RenwuCollectionServiceImpl extends ServiceImpl<RenwuCollectionDao, RenwuCollectionEntity> implements RenwuCollectionService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        Page<RenwuCollectionView> page =new Query<RenwuCollectionView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));//使用mybatis的自动方法进行查询，查询结果放入page中
        return new PageUtils(page);//数据以分页形式返回
    }


}
