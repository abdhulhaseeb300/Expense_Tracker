import 'package:flutter/material.dart';
import 'package:Meal_App/expenses.dart';
import 'package:flutter/services.dart';

var KcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(
      MaterialApp(
        // 🌙 Dark theme
        darkTheme: ThemeData.from(
          colorScheme: kDarkColorScheme,
        ).copyWith(
          cardTheme: CardThemeData(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: kDarkColorScheme.onPrimaryContainer,
            foregroundColor: kDarkColorScheme.primaryContainer,
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kDarkColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),

        // 🌞 Light / default theme
        theme: ThemeData().copyWith(
          colorScheme: KcolorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: KcolorScheme.onPrimaryContainer,
            foregroundColor: KcolorScheme.primaryContainer,
          ),
          cardTheme: CardThemeData(
            color: KcolorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: KcolorScheme.primaryContainer,
              foregroundColor: KcolorScheme.onPrimaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: KcolorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),

        themeMode: ThemeMode.system,
        home: const Expenses(),
      ),
    );
  });
}
