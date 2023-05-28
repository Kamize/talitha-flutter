// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// // Talitha Nabila -1301204516
// class Noti {
//   static Future initialize(
//       FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
//     var androidInitialize =
//         new AndroidInitializationSettings('mipmap/ic_launcher');
//     var iOSInitialize = new DarwinInitializationSettings();
//     var initializationSettings = new InitializationSettings(
//         android: androidInitialize, iOS: iOSInitialize);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   static Future showBigTextNotification(
//       {var id = 0,
//       required String title,
//       required String body,
//       var payload,
//       required FlutterLocalNotificationsPlugin fln}) async {
//     AndroidNotificationDetails androidPlatformChannelSpesifics =
//         new AndroidNotificationDetails(
//       '10160',
//       'channel_name',
//       playSound: true,
//       importance: Importance.max,
//       priority: Priority.high,
//     );

//     var not = NotificationDetails(
//         android: androidPlatformChannelSpesifics,
//         iOS: DarwinNotificationDetails());
//     await fln.show(10160, title, body, not);
//   }
// }