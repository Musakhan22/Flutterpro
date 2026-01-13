import 'package:appplusidea/data/notifiers.dart';
import 'package:appplusidea/screens/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isdarkmode, child) {
          return MaterialApp(
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isdarkmode ? Brightness.dark : Brightness.light,
            )),
            title: 'Flutter APP',
            home: const WidgetTree(),
          );
        });
  }
}
