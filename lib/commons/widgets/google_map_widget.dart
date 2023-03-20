import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget(
      {Key? key, required this.address, required this.mapsRepository})
      : super(key: key);

  final String address;
  final MapsRepository mapsRepository;

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  Place? place;

  @override
  void initState() {
    widget.mapsRepository
        .addressToCoordinate(address: widget.address)
        .then((value) {
      if (value is ApiSuccess<Place?>) {
        setState(() {
          place = value.value;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (place == null) return const SizedBox();
    return Column(
      children: [
        const SizedBox(height: s08),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: SizedBox(
            height: 180,
            width: double.infinity,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  place!.geometry.location.lat,
                  place!.geometry.location.lng,
                ),
                zoom: 14,
              ),
              zoomControlsEnabled: false,
              markers: {
                Marker(
                  markerId: MarkerId(
                    DateTime.now().millisecondsSinceEpoch.toString(),
                  ),
                  position: LatLng(
                    place!.geometry.location.lat,
                    place!.geometry.location.lng,
                  ),
                ),
              },
            ),
          ),
        ),
      ],
    );
  }
}
