import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

var kColorSheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 191));
void main() {
  // code to lock the orientation of the app to portrait mode only
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp],
  // ).then((value) => runApp(const MyApp()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(useMaterial3: true),
      // theme: ThemeData.light(useMaterial3: true),
      theme: ThemeData(useMaterial3: true).copyWith(
          colorScheme: kColorSheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSheme.onPrimaryContainer,
            foregroundColor: kColorSheme.primary,
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorSheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          )),
      home: const Expenses(),
      debugShowCheckedModeBanner: false,
    );
  }
}
