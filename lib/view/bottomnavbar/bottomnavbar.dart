import 'package:flutter/material.dart';
import 'package:flutterapp1/view/comingsoonscreen/comingsoonscreen.dart';
import 'package:flutterapp1/view/downloadscreen/downloadscreen.dart';
import 'package:flutterapp1/view/homescreen/homescreen.dart';
import 'package:flutterapp1/view/morescreen/morescreen.dart';
import 'package:flutterapp1/view/searchscreen/searchscreen.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  List screens = [
    Homescreen(),
    Searchscreen(),
    Downloadscreen(),
    Comingsoonscreen(),
    Morescreen()
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      // backgroundColor: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "download"),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_stream_outlined), label: "coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.line_weight_sharp), label: "more"),
          ]),
    );
  }
}
