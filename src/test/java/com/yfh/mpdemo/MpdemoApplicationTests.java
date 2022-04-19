package com.yfh.mpdemo;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yfh.mpdemo.entity.User;
import com.yfh.mpdemo.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
class MpdemoApplicationTests {
    @Autowired
    private UserMapper userMapper;




    // 查询数据库所有的方法 selectList
    @Test
    void findAll() {
        List<User> users = userMapper.selectList(null);
        users.forEach(System.out::println);
    }

    // 向数据库中添加值
    @Test
    public void insert() {
        User user = new User();
        user.setName("dongfang");
        user.setAge(29);
        user.setEmail("dongfang@qq.com");
        int insert = userMapper.insert(user);
        System.out.println("insert = " + insert);

        /**
         * ==>  Preparing: INSERT INTO user ( id, name, age, email ) VALUES ( ?, ?, ?, ? )
         * ==> Parameters: 1516274489643462657(Long), lucy(String), 30(Integer), lucy@qq.com(String)
         * 不需要自己设置id值，  mp自动生成一个19位的long值
         */
    }

    // 查询数据库中的一项：selectById()
    @Test
    public void findOne() {
        User user = userMapper.selectById(2);
        System.out.println(user);
    }


    // 修改操作
    @Test
    public void update() {
        User user = new User();
        user.setId(2L);
        user.setAge(45);
        userMapper.updateById(user);
    }

    // 测试乐观锁

    @Test
    public void Lock() {
        // 先查询后修改 才能实现测试功能
        User user = userMapper.selectById(1516290991197196290L);
        System.out.println(user);

        user.setAge(33);

        int i = userMapper.updateById(user);
        System.out.println(i);

    }

    @Test
    public void testSelect() {
        List<User> users = userMapper.selectBatchIds(Arrays.asList(1, 2, 3)); // select 条件 in
        users.forEach(System.out::println);
    }

    @Test
    public void testPageHelper() { // 测试分页查询
        // new page (当前页， 页面大小)
        // 当前页， 每页显示的条数
        Page<User> page = new Page<>(1, 5);

        Page<User> userPage = userMapper.selectPage(page, null); // 把分页数据全部 封装到 page中
        System.out.println(userPage);

    }

    @Test
    public void testLogicDelete() {
//        User user = new User();
//        user.setName("yuebuqun");
//        user.setAge(29);
//        user.setEmail("yuebuqun@qq.com");
//        int insert = userMapper.insert(user);
//        System.out.println("insert = " + insert);

//        int i = userMapper.deleteById(1516307751044579329L);
//        System.out.println("i = " + i);

        List<User> users = userMapper.selectList(null);
        users.forEach(System.out::println);
    }




}
