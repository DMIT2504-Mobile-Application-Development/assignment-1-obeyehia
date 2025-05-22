class CurrentWeather {
late String _city;
late String _description;
late double _currentTemp;
late DateTime _currentTime;
late DateTime _sunrise;
late DateTime _sunset;

CurrentWeather(String city, String description, double currentTemp,
    DateTime currentTime, DateTime sunrise, DateTime sunset ) {
this.city = city;
this.description = description;
this.currentTemp = currentTemp;
this.currentTime = currentTime;
this.sunrise = sunrise;
this.sunset = sunset;
}

