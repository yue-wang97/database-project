package Dao;

import java.sql.Connection;
import java.util.List;

import entity.*;

public interface UserDao {
	 public List<User> userid_selets(Connection con);
	 public int rntInSomeHour(Connection con, int month, int day, int year, int hour);
	 public int rntInSomeDay(Connection con, String date);
	 public int rntInSomeMonth(Connection con, int month);
	 public float avgdurInSomeMonth(Connection con, int month);
	 public int subnumInSomeMonth(Connection con, int month);
	 public float subrateInSomeMonth(Connection con, int month);
	 public int malenumInSomeMonth(Connection con, int month);
	 public int femalenumInSomeMonth(Connection con, int month);
	 public int[] agenumInSomeMonth(Connection con, int month);
	 public int[] agenumIn2016(Connection con);
	 public String[][] moststartIn2016(Connection con);
	 public int startStationNumInOneMonth(Connection con, String station, int month);
	 public String[][] mostendIn2016(Connection con);
	 public int endStationNumInOneMonth(Connection con, String station, int month);
	 public int[][] mostpopularbikeIn2016(Connection con);
	 public int bikeNumInOneMonth(Connection con, int bikeid, int month);
	 public List<String> getDateToWeek(int month, int day, int year);
	 public float[][] avgSpeedofDfrtAge(Connection con);
	 public float avgDistanceofMonth(Connection con, int month);
	 public float[] avgDistanceofGender(Connection con);
	 public float[] avgSpeedofGender(Connection con);
	 public float TimeEstimation(Connection con, String start, String end);
}
