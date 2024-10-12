import 'package:flutter/material.dart';

class Downloadscreen extends StatelessWidget {
  const Downloadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Icon(Icons.download, size: 50),
      ),
    );
  }
}
