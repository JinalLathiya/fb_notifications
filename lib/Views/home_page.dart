// import 'package:flutter/material.dart';
//
// import '../Services/local_notification_services.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final NotificationService _notificationService = NotificationService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter Local Notification"),
//         centerTitle: true,
//         elevation: 0,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/FB_notification');
//               },
//               icon: const Icon(
//                 Icons.arrow_forward_ios_rounded,
//               ))
//         ],
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         margin: const EdgeInsets.only(
//           top: 200,
//           bottom: 200,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             FloatingActionButton.extended(
//               label: const Text(
//                 "Local Notification",
//               ),
//               onPressed: () async {
//                 await _notificationService.showNotifications(
//                   "Local Notification",
//                   "This is a Local Notification",
//                 );
//               },
//             ),
//             FloatingActionButton.extended(
//               label: const Text(
//                 "Schedule Notification",
//               ),
//               onPressed: () async {
//                 await _notificationService.scheduleNotifications(
//                   "Schedule Notification",
//                   "This is a Schedule Notification",
//                 );
//               },
//             ),
//             FloatingActionButton.extended(
//               label: const Text(
//                 "Cancel Notification",
//               ),
//               onPressed: () async {
//                 await _notificationService.cancelNotification(1);
//               },
//             ),
//             FloatingActionButton.extended(
//               label: const Text(
//                 "Cancel All Notification",
//               ),
//               onPressed: () async {
//                 await _notificationService.cancelAllNotification();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
