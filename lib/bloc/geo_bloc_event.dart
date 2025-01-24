// geo_bloc_event.dart
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

abstract class GeoEvent extends Equatable {
  const GeoEvent();

  @override
  List<Object?> get props => [];
}

class FetchGeoData extends GeoEvent {
  final Position position;

  const FetchGeoData(this.position);

  @override
  List<Object> get props => [position];
}
