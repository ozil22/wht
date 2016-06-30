package com.huashidai.weihuotong.pay;

import java.util.HashMap;
import java.util.Iterator;

import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtil {

	public HashMap<String, Object> toMap(String s){
		HashMap<String, Object> map=new HashMap<String, Object>();
		try {
			JSONObject jb=new JSONObject(s);
			Iterator<String> a = jb.keys();
			while(a.hasNext()){
				String b=String.valueOf(a.next());
				Object c=jb.get(b);
				map.put(b, c);
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return map;
	}
	
}
