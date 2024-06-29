import 'package:company_project/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.system;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    print(brightness);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.yellow,
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: themeMode,
      home: Homescreen(
        onchange: (ThemeMode) {
          setState(() {
            themeMode = ThemeMode;
          });
        },
        icon: brightness == Brightness.light? Icons.light_mode: Icons.dark_mode,
      ),
    );
  }
}

