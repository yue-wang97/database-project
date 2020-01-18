package entity;

public class Trip {
	//TRIP_ID int not null, 
	//BIKE_ID int not null, 
	//STARTTIME varchar(20) not null, 
	//STOPTIME varchar(20) not null, 
	//DURATION int not null, 
	//START_STATION_ID int not null, 
	//END_STATION_ID int not null, 
	//USER_ID int not null,
	
	private int Trip_ID;
	private int Bike_ID;
	private String Starttime;
	private String Stoptime;
	private int Duration;
	private int Start_ID;
	private int End_ID;
    private int UserID;
   
    public int getTripID() {  
        return Trip_ID;  
    }  
    public void setTripID(int id) {  
        this.Trip_ID = id;  
    }
 
    public int getBikeID() {  
        return Bike_ID;  
    }  
    public void setBikeID(int id) {  
        this.Bike_ID = id;  
    }  
    
    public String getStarttime() {  
        return Starttime;  
    }  
    public void setStarttime(String time) {  
        this.Starttime = time;  
    }  
  
    public String getStoptime() {  
        return Stoptime;  
    }  
    public void setStoptime(String i) {  
        this.Stoptime = i;  
    }  
    
    public int getDuration() {  
        return Duration;  
    }  
    public void setDuration(int id) {  
        this.Duration = id;  
    }
    
    public int getStartID() {  
        return Start_ID;  
    }  
    public void setStartID(int id) {  
        this.Start_ID = id;  
    }
    
    public int getEndID() {  
        return End_ID;  
    }  
    public void setEndID(int id) {  
        this.End_ID = id;  
    }
    
    public int getUserID() {  
        return UserID;  
    }  
    public void setUserID(int id) {  
        this.UserID = id;  
    }
    
}
