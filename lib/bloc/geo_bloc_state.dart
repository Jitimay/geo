// geo_bloc_state.dart
import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';

abstract class GeoState extends Equatable {
  const GeoState();

  @override
  List<Object?> get props => [];
}

final class GeoInitial extends GeoState {}

class GeoLoading extends GeoState {}

class GeoLoaded extends GeoState {
  final Weather weather;

  const GeoLoaded({required this.weather});

  @override
  List<Object?> get props => [weather];
}


class GeoError extends GeoState {
  final String geo;

  const GeoError({required this.geo});

  @override
  List<Object?> get props => [geo];
}
