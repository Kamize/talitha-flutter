// /// Flutter code sample for BottomNavigationBar
// // This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// // widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// // widgets, which means it defaults to [BottomNavigationBarType.fixed], and
// // the [currentIndex] is set to index 0. The selected item is
// // amber. The `_onItemTapped` function changes the selected item's index
// // and displays a corresponding message in the center of the [Scaffold].
// import 'package:flutter/material.dart';

// class Todo {
//   final String title;
//   final String description;

//   const Todo(this.title, this.description);
// }

// void main() => runApp(const MyApp());

// /// This is the main application widget.
// /// Talitha Nabila - 1301204516
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const String _title = 'Flutter Code Sample';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Passing Data',
//       home: TodosScreen(
//         todos: List.generate(
//           6,
//           (i) => Todo(
//             'To-do list $i',
//             'This is List $i description by Talitha Nabila',
//           ),
//         ),
//       ),
//     );
//   }
// }

// /// This is the stateful widget that the main application instantiates.
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   String selectedValue = 'Value 1';
//   List<String> dropdownItems = ['Value 1', 'Value 2', 'Value 3'];
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Talitha Nabila BotNav'),
//         // Talitha Nabila - 1301204516
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               print('Menu button pressed!');
//             },
//           ),
//         ],
//       ),
//       // child: _widgetOptions.elementAt(_selectedIndex),
//       body: Center(
//         // Talitha Nabila - 1301204516
//         child: DropdownButton<String>(
//           value: selectedValue,
//           onChanged: (String? newValue) {
//             setState(() {
//               selectedValue = newValue!;
//             });
//           },
//           items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//       // Talitha Nabila - 1301204516
//       floatingActionButton: ElevatedButton(
//         onPressed: () {
//           print('Submit button pressed!');
//         },
//         child: Text('Submit'),
//       ),
//     );
//   }
// }

// class FirstFlow extends StatelessWidget {
//   // Talitha Nabila - 1301204516
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flow pertama Talitha 1301204516'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Pindah ke flow ke-2'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondFlow extends StatelessWidget {
//   // Talitha Nabila - 1301204516
//   const SecondFlow();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ini adalah flow ke-2 Talitha'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Kembali ke flow pertama'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

// class TodosScreen extends StatelessWidget {
//   const TodosScreen({super.key, required this.todos});

//   final List<Todo> todos;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Talitha Todos'),
//         ),
//         body: ListView.builder(
//           itemCount: todos.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//                 title: Text(todos[index].title),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DetailScreen(todo: todos[index]),
//                       ));
//                 });
//           },
//         ));
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key, required this.todo});
//   final Todo todo;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(todo.title),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(todo.description),
//         ));
//   }
// }
import 'notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Talitha Nabila -1301204516
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 54, 169, 61),
              Color.fromARGB(255, 62, 122, 182)
            ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor:
                  Color.fromARGB(255, 16, 73, 172).withOpacity(0.5),
            ),
            body: Center(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: 200,
              height: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Noti.showBigTextNotification(
                        title: "New Notification",
                        body: "Talitha Nabila - 1301204516",
                        fln: flutterLocalNotificationsPlugin);
                  },
                  child: Text("Show Notification")),
            ))));
  }
}