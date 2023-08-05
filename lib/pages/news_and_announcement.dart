import 'package:flutter/material.dart';

class NewsAnnouncement extends StatelessWidget {
  const NewsAnnouncement({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('News and announcement'),
        //elevation: 3,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() {}),
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox.fromSize(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: const Column(
                  children: <Widget>[
                    Divider(),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            Text("Date : 12/12/2012")
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
