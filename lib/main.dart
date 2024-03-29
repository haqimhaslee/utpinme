import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utp_in_me/auth/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'package:flutter/services.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:utp_in_me/src/utp_ui.dart';

void main() async {
 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //systemStatusBarContrastEnforced: true,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    //statusBarIconBrightness: Brightness.dark
  ));

//Setting SystmeUIMode
  //Systemahrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
     // overlays: [SystemUiOverlay.bottom]);

  runApp(const UtpInMe());
}

class UtpInMe extends StatelessWidget {
  const UtpInMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
      return MaterialApp(
          theme: ThemeData(
            fontFamily: 'GoogleSans',
            colorScheme: lightDynamic ?? lightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            fontFamily: 'GoogleSans',
            colorScheme: darkDynamic ?? darkColorScheme,
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const AuthPage());
    });
  }
}
