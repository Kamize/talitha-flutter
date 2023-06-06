import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

// Talitha Nabila - 1301204516
List<CameraDescription> cameras = [];
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(CameraApp());
}

// Talitha Nabila - 1301204516
class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

// Talitha Nabila - 1301204516
class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller),
    );
  }
}
