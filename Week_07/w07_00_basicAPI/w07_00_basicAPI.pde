// bryan ma for code 2 sp 19

String apiKey = ""; // YOUR API KEY GOES HERE!
String city = "New York";

void setup() {
  JSONObject data = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=" + city + "&APPID=" + apiKey);
  JSONArray weather = data.getJSONArray("weather");
  JSONObject element = weather.getJSONObject(0);
  
  String main = element.getString("main");
  String description = element.getString("description");
  String cityName = data.getString("name");
 
  size(600, 600);
  background(255);
  fill(0);
  textSize(40);
  text(cityName + " weather is: " + description, 50, 220, 500, 500);
}
