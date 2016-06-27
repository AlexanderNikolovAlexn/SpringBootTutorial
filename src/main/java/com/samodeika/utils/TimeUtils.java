package com.samodeika.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

public class TimeUtils {

    public static String getTime() {
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-YYYY HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        return dateFormat.format(calendar.getTime());
    }

    public static String getTimezone() {
        Calendar calendar = Calendar.getInstance();
        return calendar.getTimeZone().getDisplayName(false, TimeZone.SHORT);
    }
}
