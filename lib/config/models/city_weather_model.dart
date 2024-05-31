class CityWeatherModel {
  String ciudad;
  String pais;
  String climaActual;

  CityWeatherModel(
      {required this.ciudad, required this.pais, required this.climaActual});

  factory CityWeatherModel.fromJson(Map<String, dynamic> json) {
    return CityWeatherModel(
      ciudad: json['ciudad'] as String,
      pais: json['pais'] as String,
      climaActual: json['climaActual'] as String,
    );
  }
}
