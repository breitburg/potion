import 'package:flutter/material.dart';
import 'package:potion/screens/home_screen.dart';

class PotionApp extends StatelessWidget {
  const PotionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Potion',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 14,
            letterSpacing: 0,
          ),
          headlineLarge: TextStyle(
            fontSize: 42,
            letterSpacing: -1,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(55, 53, 48, 1)
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const HomeScreen(),
              settings: settings,
            );
        }

        throw Exception('Unknown route: ${settings.name}');
      },
    );
  }
}
