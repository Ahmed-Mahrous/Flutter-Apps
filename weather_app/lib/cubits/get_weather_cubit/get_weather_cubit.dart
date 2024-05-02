import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

import '../../models/weather_model.dart';
import '../../services/service_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  WeatherModel? weatherModel;
  GetWeatherCubit() : super(InitialState());
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await ServiceModel(Dio()).getWeatherModel(cityName: cityName);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } on Exception catch (e) {
      emit(WeatherFailureState());
    }
  }
}
