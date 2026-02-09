import 'package:appplusidea/screens/widget_tree.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key, required this.title});
  final String title;
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController Emailcontroller = TextEditingController(text: '123');
  TextEditingController Passwordcontroller = TextEditingController(text: '500');
  String confirmedemail = '123';
  String confimedpass = '500';

  @override
  void dispose() {
    Emailcontroller.dispose();
    Passwordcontroller.dispose();
    super.dispose();
  }

  void LoginFunction() {
    if (confirmedemail == Emailcontroller.text &&
        confimedpass == Passwordcontroller.text) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const WidgetTree(),
          ),
          (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
          content: Column(
            children: [
              Text(
                'Invalid password or email',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('asset/animations/Home.json'),
              TextField(
                controller: Emailcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Email...'),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              const SizedBox(height: 20),
              TextField(
                controller: Passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Password...'),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 30,
              ),
              FilledButton(
                onPressed: () => LoginFunction(),
                style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                child: Text(widget.title),
              )
            ],
          ),
        ),
      ),
    );
  }
}
