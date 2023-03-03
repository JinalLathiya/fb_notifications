import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'Views/firebase_notification.dart';

// In this we implement local notification & firebase push notification
Future<void> backGroundHandler(RemoteMessage msg) async {
  print("This message is from Background");
  print(msg.notification!.title);
  print(msg.notification!.body);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backGroundHandler);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        // "/": (context) => const HomePage(),
        // "/FB_notification": (context) => const FbNotification(),
        "/": (context) => const FbNotification(),
      },
    );
  }
}
