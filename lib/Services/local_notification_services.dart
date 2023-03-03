// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// class NotificationService {
//   static final NotificationService _notificationService =
//       NotificationService._abc();
//
//   factory NotificationService() {
//     return _notificationService;
//   }
//
//   NotificationService._abc();
//
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//
//   Future<void> initNotifications() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('logo');
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//     );
//
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }
//
//   static const AndroidNotificationDetails _androidNotificationDetails =
//       AndroidNotificationDetails(
//     '11',
//     'Jinu',
//     sound: RawResourceAndroidNotificationSound('iphone_sms'),
//     playSound: true,
//   );
//
//   Future<void> showNotifications(String title, String body) async {
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       const NotificationDetails(android: _androidNotificationDetails),
//     );
//   }
//
//   Future<void> scheduleNotifications(String title, String body) async {
//     await flutterLocalNotificationsPlugin.periodicallyShow(
//       1,
//       title,
//       body,
//       RepeatInterval.everyMinute,
//       const NotificationDetails(
//         android: _androidNotificationDetails,
//       ),
//     );
//   }
//
//   Future<void> cancelNotification(int id) async {
//     await flutterLocalNotificationsPlugin.cancel(id);
//   }
//
//   Future<void> cancelAllNotification() async {
//     await flutterLocalNotificationsPlugin.cancelAll();
//   }
// }
