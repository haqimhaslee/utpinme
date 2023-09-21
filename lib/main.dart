import 'package:flutter/material.dart';
import 'package:utp_in_me/auth/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';
import 'package:dynamic_color/dynamic_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
  ));

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top]);

  runApp(const UtpInMe());
}

class UtpInMe extends StatelessWidget {
  const UtpInMe({Key? key}) : super(key: key);

//  static final _defaultLightColorScheme =
//      ColorScheme.fromSwatch(primarySwatch: Colors.blue);

//  static final _defaultDarkColorScheme = ColorScheme.fromSwatch(
//      primarySwatch: Colors.blue, brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
//    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
    return DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
      return MaterialApp(
          theme: ThemeData(
            fontFamily: 'GoogleSans',
            //colorScheme: lightColorScheme ?? _defaultLightColorScheme,
            colorScheme: lightDynamic,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            fontFamily: 'GoogleSans',
            //colorScheme: darkColorScheme ?? _defaultDarkColorScheme,
            colorScheme: darkDynamic,
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const AuthPage());
    });
  }
}
