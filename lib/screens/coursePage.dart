import 'dart:convert';

import 'package:appplusidea/data/activity_class.dart';
import 'package:appplusidea/widget/Hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return Activity.fromJson(json);
    } else {
      throw Exception('failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          if (snapshot.hasData) {
            final activity = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeroWidget(title: 'Course'),
                    Text(activity.activity)
                  ],
                ),
              ),
            );
          } else {
            const Center(child: Text('ERROR'));
          }
          return const Center(child: Text('No activity found'));
        },
      ),
    );
  }
}
