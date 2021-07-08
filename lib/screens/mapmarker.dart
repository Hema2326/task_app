import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapAccess extends StatefulWidget {
  @override
  _MapAccessState createState() => _MapAccessState();
}

class _MapAccessState extends State<MapAccess> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Access"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          tiltGesturesEnabled: true,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          mapType: MapType.satellite,
          initialCameraPosition:
              CameraPosition(target: LatLng(37.4219983, -122.0084), zoom: 12),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: {velloreMarker},
        ),
      ),
    );
  }

  Marker velloreMarker = Marker(
    markerId: MarkerId('Vellore'),
    position: LatLng(37.4219983, -122.0084),
    infoWindow: InfoWindow(title: 'vellore is a fort city'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueViolet,
    ),
  );

  // _googleMap(BuildContext context) {
  //   Stack(
  //     children: [
  //       _googleMap(context),
  //     ],
  //   );
  // }
}
