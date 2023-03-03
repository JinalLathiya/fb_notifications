import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../Services/firebase_notification_services.dart';

class FbNotification extends StatefulWidget {
  const FbNotification({Key? key}) : super(key: key);

  @override
  State<FbNotification> createState() => _FbNotificationState();
}

class _FbNotificationState extends State<FbNotification> {
  String msg = "Waiting for message";

  @override
  void initState() {
    super.initState();
    FbNotificationServices.init();
    FirebaseMessaging.instance.getInitialMessage().then((value) {
      if (value != null) {
        setState(() {
          msg =
              "This message is from Terminated State \n ${value!.notification!.title} \n ${value.notification!.body}";
        });
      }
    });

    FirebaseMessaging.onMessage.listen((value) {
      FbNotificationServices.showForegroundNotification(value);
      setState(() {
        msg =
            "This message is from foreground State \n ${value.notification!.title} \n ${value.notification!.body}";
      });
    });

    FirebaseMessaging.onMessageOpenedApp.listen((value) {
      setState(() {
        msg =
            "This message is from background State \n ${value.notification!.title} \n ${value.notification!.body}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FireBase Notification"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              msg,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
