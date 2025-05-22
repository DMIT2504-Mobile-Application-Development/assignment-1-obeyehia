import 'dart:convert';
import 'package:http/http.dart' as http;

const String weatherApiKey = '6a9fc1701ca40a318de50f6a99eeb008';
const String currentWeatherEndpoint = 'https://api.openweathermap.org/data/2.5/weather';

Future<dynamic> getWeatherForCity({required String city}) async {

  try {

    final url = Uri.parse('$currentWeatherEndpoint?units=metric&q=$city&appid=$weatherApiKey');

    final response = await http.get(url);

    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('There was a problem with the request: status ${response.statusCode} received');
    }
  } catch (e) {
    throw Exception('There was a problem with the request: $e');
  }
}