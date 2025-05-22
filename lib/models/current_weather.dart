class CurrentWeather {
  late String _city;
  late String _description;
  late double _currentTemp;
  late DateTime _currentTime;
  late DateTime _sunrise;
  late DateTime _sunset;

  String get city => _city;
  String get description => _description;
  double get currentTemp => _currentTemp;
  DateTime get currentTime => _currentTime;
  DateTime get sunrise => _sunrise;
  DateTime get sunset => _sunset;

  set city(String value) {
    if (value.trim().isEmpty) {
      throw Exception('City cannot be empty');
    }
    _city = value;
  }

  set description(String value) {
    if (value.trim().isEmpty) {
      throw Exception('Description cannot be empty');
    }
    _description = value;
  }

  set currentTemp(double value) {
    if (value < -100 || value > 100) {
      throw Exception('Temperature must be between -100 and 100');
    }
    _currentTemp = value;
  }

  set currentTime(DateTime value) {
    if (value.isAfter(DateTime.now())) {
      throw Exception('Current time cannot be in the future');
    }
    _currentTime = value;
  }

  CurrentWeather({
    required String city,
    required String description,
    required double currentTemp,
    required DateTime currentTime,
    required DateTime sunrise,
    required DateTime sunset,
  }) {
    this.city = city;
    this.description = description;
    this.currentTemp = currentTemp;
    this.currentTime = currentTime;
    this.sunrise = sunrise;
    this.sunset = sunset;
  }
}
