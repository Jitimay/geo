// geo_bloc_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:geo/bloc/geo_bloc_event.dart';
import 'package:geo/bloc/geo_bloc_state.dart';
import 'package:weather/weather.dart';

class GeoBloc extends Bloc<GeoEvent, GeoState> {
  GeoBloc() : super(GeoInitial()) {
    on<FetchGeoData>((event, emit) async {
      emit(GeoLoading());
      try {
        // Create WeatherFactory instance with API key
        const String API_KEY = "8a119eeff7835836d4dab75ebf9f7cee"; // Replace with your actual API key
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);

        // Fetch weather data
        Weather? weather = await wf.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );

        // Check if weather data is null
        if (weather == null) {
          emit(GeoError(geo: "Weather data is not available"));
          return;
        }

        // Emit GeoLoaded state with valid weather data
        emit(GeoLoaded(weather: weather));
      } catch (e) {
        // Emit GeoError state on exception
        emit(GeoError(geo: "Failed to fetch geo data: ${e.toString()}"));
      }
    });
}
}
