class CityWeatherModel {
  String climaActual;

  CityWeatherModel({required this.climaActual});

  factory CityWeatherModel.fromJson(Map<String, dynamic> json) {
    return CityWeatherModel(
      climaActual: json['climaActual'].toString(),
    );
  }
}
