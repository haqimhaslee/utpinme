import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/settings.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool theme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //<--------------------APP BAR------------------------>
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Color.fromARGB(255, 209, 171, 1)),
        ),
        elevation: 5,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()))
                }),
          )
        ],
        backgroundColor: Color.fromARGB(255, 0, 63, 145),
      ),
      //<--------------------BODY------------------------>
      body: Column(
        children: [
          Container(
              color: Color.fromARGB(90, 255, 255, 255),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/profile_pic.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Haqim Haslee",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text("20000382"),
                            Text("Computer Engineering Department")
                          ],
                        )
                      ],
                    ),
                    Row()
                  ]))
        ],
      ),
    );
  }
}
