package com.huashidai.weihuotong.utils;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * 生成随机字符串
 * 
 * @author ozil
 *
 */
public class RandomUtil {
	/**
	 * 生成指定位随机数字
	 * 
	 * @param length 最大10位
	 * @return
	 */
	public static String randomNum(int length) {
		String[] beforeShuffle = new String[] { "0", "1", "2", "3", "4", "5",
				"6", "7", "8", "9" };
		List<String> list = Arrays.asList(beforeShuffle);
		Collections.shuffle(list);
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i));
		}
		String afterShuffle = sb.toString();
		length = length > 10 ? 10 : length;
		return afterShuffle.substring(0, length);
	}

	/**
	 * 生成指定位数数字加字母随机字符串
	 * @param length 最大62位
	 * @return
	 */
	public static String randomCode(int length) {
		String[] beforeShuffle = new String[] { "A", "B", "C", "D", "E", "F",
				"G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
				"S", "T", "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4",
				"5", "6", "7", "8", "9", "0","a","b","c","d","e","f","g","h",
				"i", "j", "k", "l", "m", "n","o","p","q","r","s","t","u","v",
				"w", "x", "y", "z"};
		List<String> list = Arrays.asList(beforeShuffle);
		Collections.shuffle(list);
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i));
		}
		String afterShuffle = sb.toString();
		length = length > 36 ? 36 : length;
		return afterShuffle.substring(0, length);
	}

}