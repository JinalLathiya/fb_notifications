import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FbNotificationServices {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void init() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('logo');
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  static void showForegroundNotification(RemoteMessage msg) {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'com.example.flutter_local_notification', // id
        'flutter_local_notification', // title
        importance: Importance.high,
      ),
    );

    flutterLocalNotificationsPlugin.show(
      0,
      msg.notification!.title,
      msg.notification!.body,
      notificationDetails,
    );
  }
}
