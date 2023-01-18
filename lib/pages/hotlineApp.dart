import 'package:flutter/material.dart';

class hotlineApp extends StatefulWidget {
  @override
  _hotlineAppState createState() => _hotlineAppState();
}

class _hotlineAppState extends State<hotlineApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hotline',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox.fromSize(
              size: Size(200, 200),
              child: ClipOval(
                child: Material(
                  color: Color.fromARGB(255, 175, 0, 0),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 198, 67, 67),
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.emergency),
                        Text(
                          "Emergency",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Color.fromARGB(255, 175, 0, 0), // Background color
                padding: EdgeInsets.all(70),
              ),
              icon: Icon(Icons.emergency),
              label: Text(
                "Emergency",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
              ),
              icon: Icon(Icons.person),
              label: Text(
                "Emergency",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
