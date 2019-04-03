// bryan ma for code 2 sp 19

String apiKey = ""; // YOUR API KEY HERE
String city = "New York";

JSONObject data;
JSONObject wind;

float direction = 0;
float time = 0;
float millisecondsToWait = 30000;

void setup() {
  size(600, 600);
  background(255);
  fill(0);
  updateData();
  time = millis();
}

void draw() {
  if (millis() > time + millisecondsToWait) {
    updateData();
    time = millis();
  }
}

void updateData() {
  data = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=" + city + "&APPID=" + apiKey);
  wind = data.getJSONObject("wind");
  direction = wind.getFloat("deg");

  background(255);

  textSize(30);
  text("Wind direction in New York: " + direction, 30, 50);  
  
  translate(width/2, height/2);
  rotate(radians(direction));
  line(-100, 0, 100, 0);
  triangle(100, 20, 100, -20, 120, 0);
}
