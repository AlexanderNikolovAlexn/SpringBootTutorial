package com.samodeika.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TimeUtils {

    public static String getTime() {
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-YYYY HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        return dateFormat.format(calendar.getTime());
    }
}
