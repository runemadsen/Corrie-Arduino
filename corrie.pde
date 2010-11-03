int rowNum = 0;
int colNum = 0;
int fadeValue = 0;

void setup() 
{   
  Serial.begin(9600); 

  pinMode(7, OUTPUT);     
  pinMode(8, OUTPUT); 
}

void loop() 
{ 
  if(Serial.available() > 3) 
  {
    int firstByte = Serial.read();
    
    if(firstByte == '*')
    {
        rowNum = Serial.read();
        colNum = Serial.read();
        fadeValue = Serial.read();
        
        if(rowNum == 0 && colNum == 0)
        {
           analogWrite(7, fadeValue);  
        }
        else if(rowNum == 0 && colNum == 1)
        {
           analogWrite(8, fadeValue);  
        }
        
        // say what you got:
        /*Serial.print("r:");
        Serial.print(rowNum, DEC);
        Serial.print(" c:");
        Serial.print(colNum, DEC);
        Serial.print(" f: ");
        Serial.println(fadeValue, DEC);*/
    }
  }
}

