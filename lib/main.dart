import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker/place_picker.dart';

// Talitha Nabila - 1301204516
void main() {
  runApp(const MyApp());
}

// Talitha Nabila - 1301204516
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talitha Nabila - 1301204516',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: const MyHomePage(title: 'Talitha Nabila - 1301204516'),
    );
  }
}

// Talitha Nabila - 1301204516
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Talitha Nabila - 1301204516
class _MyHomePageState extends State<MyHomePage> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Talitha Nabila - 1301204516'),
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        onMapCreated: onMapCreated,
        myLocationEnabled: true,
        markers: _createMarker(),
      ),
    );
  }

  Set<Marker> _createMarker() {
    return {
      Marker(
          markerId: MarkerId("marker_1"),
          position: _kMapCenter,
          infoWindow: InfoWindow(title: 'Marker 1'),
          rotation: 90),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(-6.9733165, 107.6281415),
      ),
    };
  }

  void onMapCreated(GoogleMapController controller) {
    showPlacePicker();
  }
// Talitha Nabila - 1301204516
  void showPlacePicker() async {
    LocationResult result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            PlacePicker("AIzaSyC-PfYkXilmkIqftP3OymPfh2KWvAYgjpU",
            displayLocation: LatLng(19.018255973653343, 72.84793849278007),
            )));

// Handle the result in your way
    print(result);
  }
}
