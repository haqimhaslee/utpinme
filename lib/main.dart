import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utp_in_me/src/navbar.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:utp_in_me/src/theme.dart';

void main() {
  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //statusBarColor: Color.fromARGB(255, 224, 234, 255),
  //statusBarIconBrightness: Brightness.light,
  //systemNavigationBarColor: ,
  //));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true), // standardasd dark theme
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
}
