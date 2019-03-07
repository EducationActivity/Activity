package com.tryeverything.util;

import net.sf.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class DateUtil {
        public JSONObject request(String httpArg) {
            BufferedReader reader = null;
            String result = null;
            JSONObject jsonObjectResult = null;
            StringBuffer sbf = new StringBuffer();
            String httpUrl = "http://api.goseek.cn/Tools/holiday?date=" + httpArg;

            try {
                URL url = new URL(httpUrl);
                HttpURLConnection connection = (HttpURLConnection)url.openConnection();
                connection.setRequestMethod("GET");
                connection.connect();
                InputStream is = connection.getInputStream();
                reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
                String strRead = null;
                while ((strRead = reader.readLine()) != null) {
                    sbf.append(strRead);
                    sbf.append("\r\n");
                }
                reader.close();
                result = sbf.toString();
                jsonObjectResult = JSONObject.fromObject(result);//转为JSONObject对象
            } catch (Exception e) {
                e.printStackTrace();
            }
            return jsonObjectResult;
        }
        public static void main(String[] args) {
            JSONObject a = new DateUtil().request("20190306");
            System.out.println(a.get("data"));
        }
}
