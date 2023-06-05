import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

// Talitha Nabila - 1301204516
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talitha Nabila Networking Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

//Talitha Nabila - 1301204516
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Talitha Nabila Networking Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                deleteNotes('1');
              },
              child: Text('Delete Notes'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                createNotes('New Notes');
              },
              child: Text('Create Notes'),
            ),
          ],
        ),
      ),
    );
  }

//Talitha Nabila - 1301204516
  Future<void> deleteNotes(String id) async {
    final http.Response response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      print('Notes $id deleted successfully');
    } else {
      print('Failed to delete album. Error: ${response.statusCode}');
    }
  }

//Talitha Nabila - 1301204516
  Future<void> createNotes(String title) async {
    final http.Response response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    if (response.statusCode == 201) {
      print('Notes created successfully');
      final Map<String, dynamic> album = jsonDecode(response.body);
      print('New Notes ID: ${album['id']}');
      print('New Notes Title: ${album['title']}');
    } else {
      print('Failed to create album. Error: ${response.statusCode}');
    }
  }
}
