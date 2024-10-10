import 'package:weather_app_2/freezed/current_weather.dart';

extension CurrentweatherExtension on CurrentWeather {
  String get networkImage {
    return 'http:${this.condition.icon}';
  }
   String get currentTemp {
    return '${this.temp_c.toInt()}°C';
  }
  String get currentCondition {
    return this.condition.text;
  }
  String get formattedHumidity {
    return '${this.humidity}%';
  }
   String get formattedWindKph {
    return '${this.wind_kph} KPH';
  }
  
}
