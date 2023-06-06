import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

// Talitha Nabila - 1301204516
void main() {
  runApp(MyApp());
}

// Talitha Nabila - 1301204516
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// Talitha Nabila - 1301204516
class _MyAppState extends State<MyApp> {
  String? _filePath;
  Future<void> _openFilePicker() async {
    try {
      final result = await FilePicker.platform.pickFiles();
      if (result != null) {
        setState(() {
          _filePath = result.files.single.path;
        });
      }
    } catch (e) {
      print('Error selecting file: $e');
    }
  }

// Talitha Nabila - 1301204516
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Picker Example',
      theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Talitha Nabila - 1301204516')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _openFilePicker,
                child: Text('Select File'),
              ),
              SizedBox(height: 16),
              Text(
                'Selected File: ${_filePath ?? "None"}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
