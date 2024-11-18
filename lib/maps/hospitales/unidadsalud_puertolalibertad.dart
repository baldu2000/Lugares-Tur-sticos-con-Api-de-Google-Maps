import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:turisticas_app/screens/hospitales/unidadsalud_puertolalibertad.dart';
import 'package:turisticas_app/widgets/widgets.dart';
import 'package:turisticas_app/main.dart';

class unidadsalud_puertolalibertad extends StatefulWidget {
  @override
  State<unidadsalud_puertolalibertad> createState() => _unidadsalud_puertolalibertadState();
}

class _unidadsalud_puertolalibertadState extends State<unidadsalud_puertolalibertad> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.292119, -88.8889251),
    zoom: 14.4746,
  );
  static const CameraPosition _kHospital = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(13.292119, -88.8889251),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unidad de Salud - Puerto de La Libertad'),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _goToTheHospital,
        tooltip: 'Go to the hospital',
        child: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheHospital() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kHospital));
  }
}
