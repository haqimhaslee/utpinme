import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utp_in_me/src/navbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //statusBarColor: Color.fromARGB(255, 224, 234, 255),
      //statusBarIconBrightness: Brightness.light,
      //systemNavigationBarColor: Color.fromARGB(255, 224, 234, 255)
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
}
