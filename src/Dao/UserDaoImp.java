package Dao;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import entity.*;

public class UserDaoImp implements UserDao { 
    Statement statement = null;
    ResultSet resultSet = null;
    PreparedStatement ps = null;
    
	public List<User> userid_selets(Connection con) {  
        List<User> list = new ArrayList<User>();    
        try {  
            //获取执行sql语句对象
            statement = con.createStatement();
            //执行sql语句
            resultSet = statement.executeQuery("select * from users");
            //处理结果集
            while(resultSet.next()){  
                User us = new User();  
                us.setUserID(resultSet.getInt("user_id"));
                us.setBirth(resultSet.getInt("birth_year"));
                us.setGender(resultSet.getInt("gender"));
                us.setUserType(resultSet.getString("user_type"));
                list.add(us);  
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return list;  
    }  
	
	public int rntInSomeHour(Connection con, int month, int day, int year, int hour) {  
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String hr = String.format("%02d", hour);
            String sql = "select count(*) from trips "
            		+ "where starttime like '"+month+"/"+day+"/"+year+"_"+hr+"%'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
    }  
	
	public int rntInSomeDay(Connection con, String date) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(*) from trips "
            		+ "where starttime like '"+date+"%'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        } 
        return cnt;  
	}
	
	public int rntInSomeMonth(Connection con, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(*) \n" + 
            		"from trips \n" + 
            		"where starttime like '"+month+"/%/2016%'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public float avgdurInSomeMonth(Connection con, int month) {
		float cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select avg(duration) \n" + 
            		"from trips \n" + 
            		"where starttime like '"+ month +"/%/2016%'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getFloat(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public int subnumInSomeMonth(Connection con, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(*) \n" + 
            		"from trips t join users u\n" + 
            		"on t.user_id = u.user_id\n" + 
            		"where t.starttime like '"+month+"/%/2016%' \n" + 
            		"    and u.user_type = 'Subscriber'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public float subrateInSomeMonth(Connection con, int month) {
		float rate = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select s1.sub/s2.total\n" + 
            		"from (select count(*) sub\n" + 
            		"      from trips t join users u\n" + 
            		"      on t.user_id = u.user_id\n" + 
            		"      where t.starttime like '1/%/2016%' \n" + 
            		"      and u.user_type = 'Subscriber') s1,\n" + 
            		"     (select count(*) total\n" + 
            		"      from trips \n" + 
            		"      where starttime like '1/%/2016%') s2";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
            	rate = resultSet.getFloat(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return rate;  
	}
	
	public int malenumInSomeMonth(Connection con, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(*) male\n" + 
            		"from trips t join users u\n" + 
            		"on t.user_id = u.user_id\n" + 
            		"where t.starttime like '"+month+"/%/2016%' \n" + 
            		"    and u.user_type = 'Subscriber'\n" + 
            		"    and u.gender = '1'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public int femalenumInSomeMonth(Connection con, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(*) female\n" + 
            		"from trips t join users u\n" + 
            		"on t.user_id = u.user_id\n" + 
            		"where t.starttime like '"+month+"/%/2016%' \n" + 
            		"    and u.user_type = 'Subscriber'\n" + 
            		"    and u.gender = '2'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public int[] agenumInSomeMonth(Connection con, int month) {
		int[] cnt = new int[5];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select s1.num teen,s2.num young_below25,s3.num young_above25,s4.num mid,s5.num old\n" + 
            		"from\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		"    where t.starttime like '"+month+"/%/2016%'\n" + 
            		")\n" + 
            		"where 2016-birth_year < 16)s1,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		"    where t.starttime like '"+month+"/%/2016%'\n" + 
            		")\n" + 
            		"where 2016-birth_year > 16 and 2016-birth_year <= 25)s2,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		"    where t.starttime like '"+month+"/%/2016%'\n" + 
            		")\n" + 
            		"where 2016-birth_year > 25 and 2016-birth_year <= 45)s3,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		"    where t.starttime like '"+month+"/%/2016%'\n" + 
            		")\n" + 
            		"where 2016-birth_year > 45 and 2016-birth_year <= 65)s4,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		"    where t.starttime like '"+month+"/%/2016%'\n" + 
            		")\n" + 
            		"where 2016-birth_year > 65)s5";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt[0] = resultSet.getInt("teen");
                cnt[1] = resultSet.getInt("young_below25");
                cnt[2] = resultSet.getInt("young_above25");
                cnt[3] = resultSet.getInt("mid");
                cnt[4] = resultSet.getInt("old");
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public int[] agenumIn2016(Connection con) {
		int[] cnt = new int[5];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select s1.num teen,s2.num young_below25,s3.num young_above25,s4.num mid,s5.num old\n" + 
            		"from\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		")\n" + 
            		"where 2016-birth_year < 16)s1,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		")\n" + 
            		"where 2016-birth_year > 16 and 2016-birth_year <= 25)s2,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		")\n" + 
            		"where 2016-birth_year > 25 and 2016-birth_year <= 45)s3,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		")\n" + 
            		"where 2016-birth_year > 45 and 2016-birth_year <= 65)s4,\n" + 
            		"(select count(*) as num\n" + 
            		"from (\n" + 
            		"    select u.user_id, u.birth_year\n" + 
            		"    from trips t join users u\n" + 
            		"    on t.user_id = u.user_id\n" + 
            		")\n" + 
            		"where 2016-birth_year > 65)s5";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt[0] = resultSet.getInt("teen");
                cnt[1] = resultSet.getInt("young_below25");
                cnt[2] = resultSet.getInt("young_above25");
                cnt[3] = resultSet.getInt("mid");
                cnt[4] = resultSet.getInt("old");
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	
	public String[][] moststartIn2016(Connection con) {
		String[][] start = new String[10][2];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select station_name, nums \n" + 
            		"from (select s.station_name, count(s.station_id) nums\n" + 
            		"    from trips t join stations s\n" + 
            		"    on t.start_station_id = s.station_id\n" + 
            		"    group by t.start_station_id, s.station_name\n" + 
            		"    order by count(t.start_station_id) desc)\n" + 
            		"where rownum <= 10";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){  
                start[i][0] = resultSet.getString("station_name");
                start[i][1] = resultSet.getString("nums");
                i++;
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return start;  
	}
	
	public int startStationNumInOneMonth(Connection con, String station, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(s.station_id) times \n" + 
            		"from trips t join stations s\n" + 
            		"on t.start_station_id = s.station_id\n" + 
            		"where s.station_name = '"+station+"'\n" + 
            		"    and t.starttime like '"+month+"/%/2016%'";
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public String[][] mostendIn2016(Connection con) {
		String[][] end = new String[10][2];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select station_name, times \n" + 
            		"from (select s.station_name, count(s.station_id) times\n" + 
            		"    from trips t join stations s\n" + 
            		"    on t.end_station_id = s.station_id\n" + 
            		"    group by t.end_station_id, s.station_name\n" + 
            		"    order by count(t.end_station_id) desc)\n" + 
            		"where rownum <= 10";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){  
            	end[i][0] = resultSet.getString("station_name");
            	end[i][1] = resultSet.getString("times");
                System.out.println(end[i][0]+"   "+end[i][1]);
                i++;
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return end;  
	}
	
	public int endStationNumInOneMonth(Connection con, String station, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(s.station_id) times \n" + 
            		"from trips t join stations s\n" + 
            		"on t.end_station_id = s.station_id\n" + 
            		"where s.station_name = '"+station+"'\n" + 
            		"and t.stoptime like '"+month+"/%/2016%'";
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public int[][] mostpopularbikeIn2016(Connection con) {
		int[][] start = new int[10][2];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select * \n" + 
            		"from (\n" + 
            		"    select bike_id, count(bike_id) times\n" + 
            		"    from trips\n" + 
            		"    group by bike_id\n" + 
            		"    order by times desc\n" + 
            		")\n" + 
            		"where rownum <= 10";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){  
                start[i][0] = resultSet.getInt("bike_id");
                start[i][1] = resultSet.getInt("times");
                i++;
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return start;  
	}
	
	public int bikeNumInOneMonth(Connection con, int bikeid, int month) {
		int cnt = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select count(*)\n" + 
            		"from trips\n" + 
            		"where bike_id = "+bikeid+"\n" + 
            		"    and starttime like '"+month+"/%/2016%'";
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
                cnt = resultSet.getInt(1);
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return cnt;  
	}
	
	public float[][] avgSpeedofDfrtAge(Connection con) {
		float[][] start = new float[72][2];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select 2016 - birth_year as age, \n" + 
            		"avg(111.11 * (ACOS(LEAST(1.0, COS((a.latitude)/180*2*ASIN(1))\n" + 
            		"         * COS((b.latitude)/180 * 2*ASIN(1))\n" + 
            		"         * COS((a.longtitude - b.longtitude)/180*2*ASIN(1) )\n" + 
            		"         + SIN((a.latitude)*2*ASIN(1)/180)\n" + 
            		"         * SIN((b.latitude)*2*ASIN(1)/180))))/2/ASIN(1) * 180 * 1000 / a.duration)  AS speed_in_m_per_second\n" + 
            		"from (\n" + 
            		"    select * from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.start_station_id = s.station_id\n" + 
            		") a join (\n" + 
            		"    select t.trip_id, s.latitude, s.longtitude from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.end_station_id = s.station_id\n" + 
            		") b \n" + 
            		"on a.trip_id = b.trip_id\n" + 
            		"join users u \n" + 
            		"on a.user_id = u.user_id \n" + 
            		"where birth_year > 1920\n" + 
            		"group by birth_year\n" + 
            		"order by age";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){  
                start[i][0] = resultSet.getInt("age");
                start[i][1] = resultSet.getFloat("speed_in_m_per_second");
                i++;
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return start;  
	}
	
	public float avgDistanceofMonth(Connection con, int month) {
		float distance = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select avg(69.00 * (ACOS(LEAST(1.0, COS((a.latitude)/180*2*ASIN(1))\n" + 
            		"         * COS((b.latitude)/180 * 2*ASIN(1))\n" + 
            		"         * COS((a.longtitude - b.longtitude)/180*2*ASIN(1) )\n" + 
            		"         + SIN((a.latitude)*2*ASIN(1)/180)\n" + 
            		"         * SIN((b.latitude)*2*ASIN(1)/180))))/2/ASIN(1) * 180)  AS distance_in_miles \n" + 
            		"from (\n" + 
            		"    select * from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.start_station_id = s.station_id\n" + 
            		") a join (\n" + 
            		"    select t.trip_id, s.latitude, s.longtitude from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.end_station_id = s.station_id\n" + 
            		") b \n" + 
            		"on a.trip_id = b.trip_id\n" + 
            		"where a.starttime like '"+month+"/%/2016%'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
            	distance = resultSet.getFloat("distance_in_miles");
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return distance;  
	}
	
	public float[] avgDistanceofGender(Connection con) {
		float[] distance = new float[2];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select case u.gender\n" + 
            		"       when 1 then 'Male'\n" + 
            		"       else 'Female' end, avg(69.00 * (ACOS(LEAST(1.0, COS((a.latitude)/180*2*ASIN(1))\n" + 
            		"         * COS((b.latitude)/180 * 2*ASIN(1))\n" + 
            		"         * COS((a.longtitude - b.longtitude)/180*2*ASIN(1) )\n" + 
            		"         + SIN((a.latitude)*2*ASIN(1)/180)\n" + 
            		"         * SIN((b.latitude)*2*ASIN(1)/180))))/2/ASIN(1) * 180)  AS distance_in_miles \n" + 
            		"from (\n" + 
            		"    select * from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.start_station_id = s.station_id\n" + 
            		") a join (\n" + 
            		"    select t.trip_id, s.latitude, s.longtitude from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.end_station_id = s.station_id\n" + 
            		") b \n" + 
            		"on a.trip_id = b.trip_id\n" + 
            		"join users u \n" + 
            		"on a.user_id = u.user_id \n" + 
            		"where u.birth_year > 1920 and (u.gender = 1 or u.gender = 2)\n" + 
            		"group by u.gender";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){  
            	distance[i] = resultSet.getFloat("distance_in_miles");
            	i++;
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return distance;  
	}
	
	public float[] avgSpeedofGender(Connection con) {
		float[] distance = new float[2];
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select case u.gender\n" + 
            		"       when 1 then 'Male'\n" + 
            		"       else 'Female' end, avg(111.11 * (ACOS(LEAST(1.0, COS((a.latitude)/180*2*ASIN(1))\n" + 
            		"         * COS((b.latitude)/180 * 2*ASIN(1))\n" + 
            		"         * COS((a.longtitude - b.longtitude)/180*2*ASIN(1) )\n" + 
            		"         + SIN((a.latitude)*2*ASIN(1)/180)\n" + 
            		"         * SIN((b.latitude)*2*ASIN(1)/180))))/2/ASIN(1) * 180 * 1000 / a.duration)  AS speed_in_m_per_second\n" + 
            		"from (\n" + 
            		"    select * from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.start_station_id = s.station_id\n" + 
            		") a join (\n" + 
            		"    select t.trip_id, s.latitude, s.longtitude from\n" + 
            		"    trips t join stations s \n" + 
            		"    on t.end_station_id = s.station_id\n" + 
            		") b \n" + 
            		"on a.trip_id = b.trip_id\n" + 
            		"join users u \n" + 
            		"on a.user_id = u.user_id \n" + 
            		"where u.birth_year > 1920 and (u.gender = 1 or u.gender = 2)\n" + 
            		"group by u.gender";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){  
            	distance[i] = resultSet.getFloat("speed_in_m_per_second");
            	i++;
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return distance;  
	}
	
	public float TimeEstimation(Connection con, String start, String end) {
		float time = 0;
        try {   
            //获取执行sql语句对象
            statement = con.createStatement();
            String sql = "select a.station_name start_station, b.station_name end_station, \n" + 
            		"    69.00 * (ACOS(LEAST(1.0, COS((a.latitude)/180*2*ASIN(1))\n" + 
            		"         * COS((b.latitude)/180 * 2*ASIN(1))\n" + 
            		"         * COS((a.longtitude - b.longtitude)/180*2*ASIN(1) )\n" + 
            		"         + SIN((a.latitude)*2*ASIN(1)/180)\n" + 
            		"         * SIN((b.latitude)*2*ASIN(1)/180))))/2/ASIN(1) * 180  AS time \n" + 
            		"from stations a \n" + 
            		"join stations b\n" + 
            		"on a.station_id != b.station_id\n" + 
            		"where a.station_name = '"+start+"' and b.station_name = '"+end+"'";
            //System.out.println(sql);
            //执行sql语句
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){  
            	time = resultSet.getFloat("time");
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return time;  
	}
	
	public List<String> getDateToWeek(int month, int day, int year){
		List<String> dateWeekList = new ArrayList<String>();
		SimpleDateFormat sdf = new SimpleDateFormat("M/d/yyyy");
		String time = "";
		//flag用来存取与当天日期的相差数
		int flag = 0;
		for(int i=1;i<8;i++){
			//新建日历
			Calendar cal = Calendar.getInstance();
			//在日历中找到当前日期
			cal.set(year, month-1, day);
			//当前日期时本周第几天，默认按照西方惯例上周星期天为第一天
			flag = -cal.get(Calendar.DAY_OF_WEEK);
			//根据循环。当天与上周星期天和本周一到周五相差的天数
			cal.add(Calendar.DATE, flag+i);
			//转化格式
			time = sdf.format(cal.getTime());
			//System.out.println(time);
			//存入list
			dateWeekList.add(time);
		}
		return dateWeekList;	
	}
}
