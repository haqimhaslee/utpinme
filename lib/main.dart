import 'package:flutter/material.dart';
import 'package:utp_in_me/src/navbar.dart';

void main() {
  runApp(const UtpInMe());
}

class UtpInMe extends StatelessWidget {
  const UtpInMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color.fromARGB(255, 28, 80, 122),
              onPrimary: Color(0xFFFFFFFF),
              primaryContainer: Color(0xFFD2E4FF),
              onPrimaryContainer: Color(0xFF001C37),
              secondary: Color(0xFF535F70),
              onSecondary: Color(0xFFFFFFFF),
              secondaryContainer: Color(0xFFD7E3F8),
              onSecondaryContainer: Color(0xFF101C2B),
              tertiary: Color(0xFF815600),
              onTertiary: Color(0xFFFFFFFF),
              tertiaryContainer: Color(0xFFFFDDB1),
              onTertiaryContainer: Color(0xFF291800),
              error: Color(0xFFBA1A1A),
              errorContainer: Color(0xFFFFDAD6),
              onError: Color(0xFFFFFFFF),
              onErrorContainer: Color(0xFF410002),
              background: Color(0xFFFDFCFF),
              onBackground: Color(0xFF1A1C1E),
              surface: Color(0xFFFDFCFF),
              onSurface: Color(0xFF1A1C1E),
              surfaceVariant: Color(0xFFDFE2EB),
              onSurfaceVariant: Color(0xFF43474E),
              outline: Color(0xFF73777F),
              onInverseSurface: Color(0xFFF1F0F4),
              inverseSurface: Color(0xFF2F3033),
              inversePrimary: Color(0xFFA1C9FF),
              shadow: Color(0xFF000000),
              surfaceTint: Color(0xFF0F60A4),
              outlineVariant: Color(0xFFC3C6CF),
              scrim: Color(0xFF000000),
            )),
        darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xFFA1C9FF),
              onPrimary: Color(0xFF00325A),
              primaryContainer: Color(0xFF004880),
              onPrimaryContainer: Color(0xFFD2E4FF),
              secondary: Color(0xFFBBC7DB),
              onSecondary: Color(0xFF263141),
              secondaryContainer: Color(0xFF3C4858),
              onSecondaryContainer: Color(0xFFD7E3F8),
              tertiary: Color(0xFFFFBA4B),
              onTertiary: Color(0xFF442B00),
              tertiaryContainer: Color(0xFF624000),
              onTertiaryContainer: Color(0xFFFFDDB1),
              error: Color(0xFFFFB4AB),
              errorContainer: Color(0xFF93000A),
              onError: Color(0xFF690005),
              onErrorContainer: Color(0xFFFFDAD6),
              background: Color(0xFF1A1C1E),
              onBackground: Color(0xFFE3E2E6),
              surface: Color(0xFF1A1C1E),
              onSurface: Color(0xFFE3E2E6),
              surfaceVariant: Color(0xFF43474E),
              onSurfaceVariant: Color(0xFFC3C6CF),
              outline: Color(0xFF8D9199),
              onInverseSurface: Color(0xFF1A1C1E),
              inverseSurface: Color(0xFFE3E2E6),
              inversePrimary: Color(0xFF0F60A4),
              shadow: Color(0xFF000000),
              surfaceTint: Color(0xFFA1C9FF),
              outlineVariant: Color(0xFF43474E),
              scrim: Color(0xFF000000),
            )),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      );
}
