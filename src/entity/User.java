package entity;

public class User {
	//USER_ID int not null,
	//BIRTH_YEAR int, 
	//GENDER int not null, 
	//USER_TYPE VARCHAR(25 BYTE) not null
	
	private int User_ID;
	private int Birth_Year;
	private int Gender;
    private String User_Type;
   
    public int getUserID() {  
        return User_ID;  
    }  
    public void setUserID(int id) {  
        this.User_ID = id;  
    }  
    
    public int getBirth() {  
        return Birth_Year;  
    }  
    public void setBirth(int num) {  
        this.Birth_Year = num;  
    }  
  
    public int getGender() {  
        return Gender;  
    }  
    public void setGender(int i) {  
        this.Gender = i;  
    }  
    
    public String getUserType() {  
        return User_Type;  
    }  
    public void setUserType(String s) {  
        this.User_Type = s;  
    }  
}
