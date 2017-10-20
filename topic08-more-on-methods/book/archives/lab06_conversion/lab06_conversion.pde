float farenheit = 451.0;

void setup()
{ 
    float celsius = farenheitToCelsius(farenheit);
    println("Celsius value for " + farenheit + " is " + celsius);
    //This line stops the display window being displayed
    //by exiting the program as soon as the caluclation is done
    System.exit(0);
}

float farenheitToCelsius(float farenheit)
{
     return (farenheit - 32.0) * (5.0/9.0);
}



