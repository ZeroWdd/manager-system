package com.zero.system.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Classname DateUtil
 * @Description 日期转换器
 * @Date 2019/7/18 9:09
 * @Created by WDD
 */
public class DateUtil {
    /**
     * 日期装字符串
     * @return
     */
    public static String getStringDate(String type){
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(type);
        String format = simpleDateFormat.format(date);
        return format;
    }
}
