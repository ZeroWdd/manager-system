package com.zero.system;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ManagerSystemApplicationTests {

    @Test
    public void contextLoads() throws ParseException {
        Date date = new Date();
        SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd"); //HH表示24小时制；
        String formatDate = dFormat.format(date);
        Date parse = dFormat.parse(formatDate);
        System.out.println(parse);
    }

}
