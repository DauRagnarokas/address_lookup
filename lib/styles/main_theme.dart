import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTheme {
  MainTheme._();

  static const MaterialColor skinColor = Colors.deepPurple;
  static const Color seedColor = Color.fromARGB(255, 67, 213, 37);

  static ThemeData data() {
    return ThemeData(
      colorScheme:
          ColorScheme.fromSeed(seedColor: seedColor, primary: seedColor),
      progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.orange, linearTrackColor: Colors.grey.shade200),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
      ),
      textTheme: _textTheme,
      appBarTheme: _appBarTheme,
    );
  }

  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: skinColor,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarColor: Colors.black,
    ),
  );

  static const TextTheme _textTheme = TextTheme(
    bodyMedium: TextStyle(fontSize: 20),
  );
}
