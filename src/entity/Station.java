package entity;

public class Station {
	//STATION_ID int not null, 
	//STATION_NAME VARCHAR2(60 BYTE) not null,  
	//LATITUDE real not null,
	//LONGTITUDE real not null
	
	private int Station_ID;
	private String Station_Name;
	private double Latitude;
    private double Longtitude;
   
    public int getStationID() {  
        return Station_ID;  
    }  
    public void setStationID(int id) {  
        this.Station_ID = id;  
    }  
    
    public String getStationName() {  
        return Station_Name;  
    }  
    public void setStationName(String num) {  
        this.Station_Name = num;  
    }  
  
    public double getLatitude() {  
        return Latitude;  
    }  
    public void setLatitude(double i) {  
        this.Latitude = i;  
    }  
    
    public double getLongtitude() {  
        return Longtitude;  
    }  
    public void setLongtitude(double s) {  
        this.Longtitude = s;  
    }  
}

