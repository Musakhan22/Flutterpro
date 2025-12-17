import 'package:appplusidea/widget/NavBar_widget.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('DRAW')),
            ListTile(
              title: Text('logout'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'FLUTTER UI',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
