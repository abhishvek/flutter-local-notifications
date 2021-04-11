import 'package:flutter/material.dart';
import 'package:notifyme/services/notification.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<NotificationService>(context, listen: false).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
                child: Consumer<NotificationService>(
      builder: (context, model, _) =>
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => model.instantNofitication(),
            child: Text('Instant Notification')),
        ElevatedButton(
            onPressed: () => model.imageNotification(),
            child: Text('Image Notification')),
        ElevatedButton(
            onPressed: () => model.stylishNotification(),
            child: Text('Media Notification')),
        ElevatedButton(
            onPressed: () => model.sheduledNotification(),
            child: Text('Scheduled Notification')),
        ElevatedButton(
            onPressed: () => model.cancelNotification(),
            child: Text('Cancel Notification')),
      ]),
    ))));
  }
}
