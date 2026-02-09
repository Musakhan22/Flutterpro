import 'package:appplusidea/data/constants.dart';
import 'package:appplusidea/data/notifiers.dart';
import 'package:appplusidea/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    Themeselector();
    super.initState();
  }

  void Themeselector() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final bool? getval = preferences.getBool(KConstants.ThemeKey);
    isDarkModeNotifier.value = getval ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isdarkmode, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isdarkmode ? Brightness.dark : Brightness.light,
            )),
            title: 'Flutter APP',
            home: const Welcomescreen(),
          );
        });
  }
}
