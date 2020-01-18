package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.*;
import Database.Database;
import entity.*;


public class UserServiceImp implements UserService{
	Connection con = Database.connection(); 
	UserDao ud= new UserDaoImp();
	
	public List<User> userid_selets() {  
		List<User> list=new ArrayList<User>();  
		list=ud.userid_selets(con);  
		return list; 
	}  
	
	public int[] rntPerHourInSomeday(int month, int day, int year) {
		int[] array = new int[24];
		for (int h = 0; h < 24; h++) {
			array[h] = ud.rntInSomeHour(con, month, day, year, h);
			//System.out.println("hour:"+h+"  cnt:"+array[h]);
		}
		return array;
	}
	
	public int[] rntPerDayInSomeweek(int month, int day, int year) {
		int[] array = new int[7];
		List<String> week = ud.getDateToWeek(month, day, year);
		System.out.println(week);
		for (int h = 0; h < week.size(); h++) {
			array[h] = ud.rntInSomeDay(con, week.get(h));
			//System.out.println("date:"+week.get(h)+"  cnt:"+array[h]);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[] rntPerMonthIn2016() {
		int[] array = new int[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.rntInSomeMonth(con, m+1);
			//System.out.println("month:"+ m+1 +"  cnt:"+array[m]);
		}
		return array;
	}
	
	public float[] avgdurPerMonthIn2016() {
		float[] array = new float[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.avgdurInSomeMonth(con, m+1);
			//System.out.println("month:"+ m+1 +"  cnt:"+array[m]);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[] subnumPerMonthIn2016() {
		int[] array = new int[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.subnumInSomeMonth(con, m+1);
			//System.out.println("month:"+ m+1 +"  cnt:"+array[m]);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public float[] subratePerMonthIn2016() {
		float[] array = new float[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.subrateInSomeMonth(con, m+1);
			//System.out.println("month:"+ m+1 +"  cnt:"+array[m]);
		}
		return array;
	}
	
	public float[][] gendernumPerMonthIn2016() {
		float[][] array = new float[12][3];
		for (int m = 0; m < 12; m++) {
			array[m][0] = ud.malenumInSomeMonth(con, m+1);
			array[m][1] = ud.femalenumInSomeMonth(con, m+1);
			array[m][2] = array[m][0] / (array[m][0]+array[m][1]);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[][] agenumPerMonthIn2016() {
		int[][] array = new int[12][5];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.agenumInSomeMonth(con, m+1);
		}
		return array;
	}
	
	public int[] agenumIn2016() {
		int[] array = ud.agenumIn2016(con);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public String[][] moststartIn2016() {
		String[][] array = ud.moststartIn2016(con);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[] startStationPerMonthIn2016(String station) {
		int[] array = new int[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.startStationNumInOneMonth(con, station, m+1);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public String[][] mostendIn2016() {
		String[][] array = ud.mostendIn2016(con);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[] endStationPerMonthIn2016(String station) {
		int[] array = new int[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.endStationNumInOneMonth(con, station, m+1);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[][] mostbikeIn2016() {
		int[][] array = ud.mostpopularbikeIn2016(con);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public int[] bikePerMonthIn2016(int bike) {
		int[] array = new int[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.bikeNumInOneMonth(con, bike, m+1);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public float[][] avgSpeedofDfrtAge() {
		float[][] array = ud.avgSpeedofDfrtAge(con);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public float[] avgDistancePerMonthin2016() {
		float[] array = new float[12];
		for (int m = 0; m < 12; m++) {
			array[m] = ud.avgDistanceofMonth(con, m+1);
			//System.out.println("month:"+ m+1 +"  cnt:"+array[m]);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public float[] avgDistanceofGender() {
		float[] array = ud.avgDistanceofGender(con);
		return array;
	}
	
	public float[] avgSpeedofGender() {
		float[] array = ud.avgSpeedofGender(con);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return array;
	}
	
	public float TimeEstimation(String start, String end) {
		float time = ud.TimeEstimation(con, start, end);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return time;
	}
}
