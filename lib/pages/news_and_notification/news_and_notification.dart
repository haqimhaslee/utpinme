import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/news_and_notification/news.dart';
import 'package:utp_in_me/pages/news_and_notification/notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(
              text: "News",
            ),
            Tab(
              text: "Notification",
            ),
          ],
        ),
        body: TabBarView(
          //physics: NeverScrollableScrollPhysics(),
          children: [
            News(),
            NewsNotification(),
          ],
        ),
      ),
    );
  }
}
