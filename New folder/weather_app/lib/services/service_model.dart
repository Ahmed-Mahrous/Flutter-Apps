import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class ServiceModel {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com';
  final String apiKey = '7785a3bd0ef24383ade120821242204';
  ServiceModel(this.dio);
  Future<WeatherModel> getWeatherModel({required String cityName}) async {
    try {
      final Response response =
          await dio.get('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops, There is Something wrong';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops, There is Something wrong');
    }
  }
}
