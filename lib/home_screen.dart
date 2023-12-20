import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010101),
      appBar: AppBar(
        backgroundColor: Color(0xff010101),
        title: Row(
          children: [
            Text('Hi, Aamir'),
            Image(image: AssetImage('assets/images/icon.png'),width: 100),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
