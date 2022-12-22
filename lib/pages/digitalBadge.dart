import 'package:flutter/material.dart';

class digitalBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Digital ID',
          style: TextStyle(color: Color.fromARGB(255, 209, 171, 1)),
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 63, 145),
      ),
      body: Center(
        child: Text('Digital ID page'),
      ),
    );
  }
}
