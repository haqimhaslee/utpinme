import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/notificationPage.dart';
import 'package:utp_in_me/widgets/home-widgets/appShortcut.dart';
import 'package:gridview_menu/gridview_menu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'UTPinMe',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          elevation: 5,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: (() => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()))
                  }),
            )
          ],
          backgroundColor: Color.fromARGB(255, 0, 63, 145),
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quick App Launcher",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, childAspectRatio: 3 / 3),
                children: <Widget>[],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(children: <Widget>[
                Text(
                  "Update & Newsletter",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ]),
            ),
            _cardItem(1),
            _cardItem(2),
            _cardItem(3),
            _cardItem(4),
          ],
        ),
      );

  _cardItem(image) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/chan.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15)),
        ),
        SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "News 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "News 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "by Unknown",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        )
      ]),
    );
  }

  _gridItem(icon) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          child: Icon(
            icon,
            size: 35,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          backgroundColor: Color.fromARGB(255, 0, 63, 145),
        ),
        SizedBox(height: 13),
      ],
    );
  }

  _top() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 63, 145),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile_pic.png"),
                ),
                SizedBox(width: 10),
                Text(
                  "  Hi, Haqim Haslee",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: (() => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()))
                  }),
            )
          ],
        )
      ]),
    );
  }
}
