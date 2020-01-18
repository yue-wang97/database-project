package Service;

import entity.*;
import java.util.List;

public interface UserService {
	public List<User> userid_selets(); 
	public int[] rntPerHourInSomeday(int month, int day, int year);
	public int[] rntPerDayInSomeweek(int month, int day, int year);
	public int[] rntPerMonthIn2016();
	public float[] avgdurPerMonthIn2016();
	public int[] subnumPerMonthIn2016();
	public float[] subratePerMonthIn2016();
	public float[][] gendernumPerMonthIn2016();
	public int[][] agenumPerMonthIn2016();
	public int[] agenumIn2016();
	public String[][] moststartIn2016();
	public int[] startStationPerMonthIn2016(String station);
	public String[][] mostendIn2016();
	public int[] endStationPerMonthIn2016(String station);
	public int[][] mostbikeIn2016();
	public int[] bikePerMonthIn2016(int bike);
	public float[][] avgSpeedofDfrtAge();
	public float[] avgDistancePerMonthin2016();
	public float[] avgDistanceofGender();
	public float[] avgSpeedofGender();
	public float TimeEstimation(String start, String end);
}
