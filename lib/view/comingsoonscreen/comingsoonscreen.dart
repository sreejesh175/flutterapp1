import 'package:flutter/material.dart';

class Comingsoonscreen extends StatelessWidget {
  const Comingsoonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Icon(Icons.screen_lock_landscape, size: 50),
      ),
    );
  }
}
