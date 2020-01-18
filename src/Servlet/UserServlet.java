package Servlet;

import java.util.ArrayList;
import java.util.List;
import Service.*;
import entity.*;

public class UserServlet {
	UserService ts=new UserServiceImp();
	
	public List<User> userid_selets(){  
		List<User> list=new ArrayList<>();  
		list=ts.userid_selets();  
		return list;   
	}
	
	public int[] rntPerHourInSomeday(int year, int month, int day) {
		int[] cnt = ts.rntPerHourInSomeday(month, day, year);
		return cnt;
	}
	
	public int[] rntPerDayInSomeweek(int year, int month, int day) {
		int[] cnt = ts.rntPerDayInSomeweek(month, day, year);
		return cnt;
	}
	
	public int[] rntPerMonthIn2016() {
		int[] cnt = ts.rntPerMonthIn2016();
		return cnt;
	}
	
	public float[] avgdurPerMonthIn2016() {
		float[] cnt = ts.avgdurPerMonthIn2016();
		return cnt;
	}
	
	public int[] subnumPerMonthIn2016() {
		int[] cnt = ts.subnumPerMonthIn2016();
		return cnt;
	}
	
	public float[] subratePerMonthIn2016() {
		float[] cnt = ts.subratePerMonthIn2016();
		return cnt;
	}
	
	public float[][] gendernumPerMonthIn2016() {
		float[][] cnt = ts.gendernumPerMonthIn2016();
		return cnt;
	}
	
	public int[][] agenumPerMonthIn2016() {
		int[][] cnt = ts.agenumPerMonthIn2016();
		return cnt;
	}
	
	public int[] agenumIn2016() {
		int[] cnt = ts.agenumIn2016();
		return cnt;
	}
	
	public String[][] moststartIn2016() {
		String[][] station = ts.moststartIn2016();
		return station;
	}
	
	public int[] startStationPerMonthIn2016(String station) {
		int[] cnt = ts.startStationPerMonthIn2016(station);
		return cnt;
	}
	
	public String[][] mostendIn2016() {
		String[][] station = ts.mostendIn2016();
		return station;
	}
	
	public int[] endStationPerMonthIn2016(String station) {
		int[] cnt = ts.endStationPerMonthIn2016(station);
		return cnt;
	}
	
	public int[][] mostbikeIn2016() {
		int[][] bike = ts.mostbikeIn2016();
		return bike;
	}
	
	public int[] bikePerMonthIn2016(int bike) {
		int[] cnt = ts.bikePerMonthIn2016(bike);
		return cnt;
	}
	
	public float[][] avgSpeedofDfrtAge() {
		float[][] speed = ts.avgSpeedofDfrtAge();
		return speed;
	}
	
	public float[] avgDistancePerMonthin2016() {
		float[] cnt = ts.avgDistancePerMonthin2016();
		return cnt;
	}
	
	public float[] avgSpeedofGender() {
		float[] speed = ts.avgSpeedofGender();
		return speed;
	}
	
	public float[] avgDistanceofGender() {
		float[] cnt = ts.avgDistanceofGender();
		return cnt;
	}
	
	public float TimeEstimation(String start, String end) {
		float time = ts.TimeEstimation(start, end);
		return time;
	}
}
