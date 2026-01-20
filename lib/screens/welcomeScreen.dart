import 'package:appplusidea/screens/loginScreen.dart';
import 'package:appplusidea/screens/widget_tree.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('asset/animations/Welcome.json'),
            const FittedBox(
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 80),
              ),
            ),
            SizedBox(height: 60),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WidgetTree(),
                  ));
                },
                child: const Text('Get started')),
            SizedBox(height: 10),
            TextButton.icon(
              style:
                  TextButton.styleFrom(minimumSize: Size(double.infinity, 40)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Loginscreen(),
                ));
              },
              label: Text('Login'),
              icon: Icon(Icons.login),
            )
          ],
        ),
      ),
    );
  }
}
