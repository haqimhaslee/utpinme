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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 10,
                              right: 10,
                              //bottom: 15,
                            ),
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
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
