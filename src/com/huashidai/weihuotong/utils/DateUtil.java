package com.huashidai.weihuotong.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	public static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	/**
	 * 获取距离当前多少天的日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDay(Date date, int day) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_MONTH, day);
		return calendar.getTime();
	}

	/**
	 * 获取距离当前多少小时的日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDayOfHour(Date date, int hour) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.HOUR_OF_DAY, hour);
		date = calendar.getTime();
		return date;
	}

	/**
	 * 获取前一天日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastDay(Date date) {
		return getDay(date, -1);
	}

	/**
	 * 获取下一天日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getNextDay(Date date) {
		return getDay(date, 1);
	}

	/**
	 * 获取一周前日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastWeek(Date date) {
		return getDay(date, -7);
	}

	/**
	 * 获取一个月前日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastMonth(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, -1);
		return calendar.getTime();
	}

	/**
	 * 获得当天0点时间
	 * 
	 * @return
	 */
	public static String getTimesmorning() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		return sdf.format(calendar.getTime());
	}

	/**
	 * 获得当天24点时间
	 * 
	 * @return
	 */
	public static String getTimesnight() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 24);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		return sdf.format(calendar.getTime());
	}

	/**
	 * 将时间的年月日转换为Long类型
	 * 
	 * @param date
	 * @return 如: 20160113
	 */
	public static Long dateToLong(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String format = sdf.format(date);
		return new Long(format);
	}

	/**
	 * 将Long类型的时间转为Date
	 * 
	 * @param date
	 *            如: 20160113
	 * @return
	 */
	public static Date longToDate(Long date) {
		String string = date.toString();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date d = null;
		try {
			d = sdf.parse(string);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return d;
	}

	/**
	 * 获取本周一
	 * 
	 * @param date
	 * @return
	 */
	public static Date getWeekMonday(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_MONTH, -1); // 解决周日会出现 并到下一周的情况
		calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
		return calendar.getTime();
	}

	/**
	 * 获取本周日
	 * 
	 * @param date
	 * @return
	 */
	public static Date getWeekSunday(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_MONTH, 6);
		calendar.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
		return calendar.getTime();
	}

	/**
	 * 获取上周一
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastWeekMonday(Date date) {
		Date day = getDay(date, -7);
		return getWeekMonday(day);
	}

	/**
	 * 获取上周日
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastWeekSunday(Date date) {
		Date day = getDay(date, -7);
		return getWeekSunday(day);
	}

	/**
	 * 获取上月第一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastMonthStart(Date date) {
		Calendar calendar = Calendar.getInstance();// 获取当前日期
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, -1);
		calendar.set(Calendar.DAY_OF_MONTH, 1);// 设置为1号,当前日期既为本月第一天
		return calendar.getTime();
	}

	/**
	 * 获取上月最后一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastMonthEnd(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.MONTH, -1);
		calendar.set(Calendar.DAY_OF_MONTH,
				calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		return calendar.getTime();
	}

	/**
	 * 获取本月第一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getMonthStart(Date date) {
		Calendar calendar = Calendar.getInstance();// 获取当前日期
		calendar.setTime(date);
		calendar.add(Calendar.MONTH, 0);
		calendar.set(Calendar.DAY_OF_MONTH, 1);// 设置为1号,当前日期既为本月第一天
		return calendar.getTime();
	}

	/**
	 * 获取本月最后一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getMonthEnd(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.DAY_OF_MONTH,
				calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		return calendar.getTime();
	}

	/**
	 * 获取当年的第一天
	 * 
	 * @param year
	 * @return
	 */
	public static Date getYearStart(Date date) {
		Calendar calendar = Calendar.getInstance();// 获取当前日期
		calendar.setTime(date);
		calendar.set(Calendar.MONTH, Calendar.JANUARY);
		calendar.set(Calendar.DAY_OF_MONTH, 1);// 设置为1号,当前日期既为本月第一天
		return calendar.getTime();
	}

	/**
	 * 获取当年的最后一天
	 * 
	 * @param year
	 * @return
	 */
	public static Date getYearEnd(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.MONTH, Calendar.DECEMBER);
		calendar.set(Calendar.DAY_OF_MONTH,
				calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		return calendar.getTime();
	}

	/**
	 * 计算两个日期之间相差的天数
	 * 
	 * @param begin
	 *            开始时间
	 * @param end
	 *            结束时间
	 * @return 相差天数
	 * @throws ParseException
	 */
	public static int betweenDays(Date begin, Date end) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		begin = sdf.parse(sdf.format(begin));
		end = sdf.parse(sdf.format(end));
		Calendar cal = Calendar.getInstance();
		cal.setTime(begin);
		long time1 = cal.getTimeInMillis();
		cal.setTime(end);
		long time2 = cal.getTimeInMillis();
		long between_days = (time2 - time1) / (1000 * 3600 * 24);
		int days = Integer.parseInt(String.valueOf(between_days));
		return days < 1 ? 1 : days;
	}
}
