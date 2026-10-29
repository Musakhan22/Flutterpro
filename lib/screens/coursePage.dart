import 'dart:convert';

import 'package:appplusidea/data/activity_class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  bool isFirst = true;
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

  void FetchData() {
    setState(() {
      getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFirst = !isFirst;
                });
              },
              icon: const Icon(Icons.switch_access_shortcut))
        ],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            return Padding(
                padding: const EdgeInsets.all(10),
                child: AnimatedCrossFade(
                    firstChild: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text('Activity: ${activity.activity.toString()}'),
                          const SizedBox(height: 10),
                          Text(
                              'Participants: ${activity.participants.toString()}'),
                          Text('Price: ${activity.price.toString()}'),
                          Text(
                              'Availability: ${activity.availability.toString()}'),
                          Text(
                              'Accessibility: ${activity.accessibility.toString()}'),
                          Text('Duration: ${activity.duration.toString()}'),
                          Text(
                              'kid-Friendly: ${activity.kidFriendly.toString()}'),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: () => FetchData(),
                            child: const Text('Update Activity'),
                          )
                        ],
                      ),
                    ),
                    secondChild: Center(
                      child: Image.asset('./asset/images/bg-img.jpg'),
                    ),
                    crossFadeState: isFirst
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 2000)));
          } else {
            const Center(child: Text('ERROR'));
          }
          return const Center(child: Text('No activity found'));
        },
      ),
    );
  }
}
