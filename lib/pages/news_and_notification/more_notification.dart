import 'package:flutter/material.dart';

class MoreNotification extends StatelessWidget {
  const MoreNotification({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      body: ListView(children: [
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            width: 230,
                            //height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Notification Title 1"),
                                Text("Notification content"),
                                Text(''),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
