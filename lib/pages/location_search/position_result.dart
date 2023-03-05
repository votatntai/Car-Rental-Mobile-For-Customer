import 'package:geolocator/geolocator.dart';

class PositionResult {
  final Position? position;
  final String? address;

  PositionResult({this.position, this.address});
}
