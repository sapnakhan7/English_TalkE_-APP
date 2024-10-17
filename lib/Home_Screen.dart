import 'package:bottom_navigation_bar_task/History.dart';
import 'package:bottom_navigation_bar_task/Home.dart';
import 'package:bottom_navigation_bar_task/Notifications.dart';
import 'package:bottom_navigation_bar_task/users.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  dynamic _changeTab(dynamic index){
    setState(() {
      currentIndex=index;
    });
  }

  List<dynamic> screens=<dynamic> [
    home(),
    NotificationScreen(),
    History(),
    User(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BOTTOM NAVIGATION'),
      //   centerTitle: true,
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex=value;
        });
      },
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active,), 
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,), 
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,), 
            label: 'User',
          ),
        ],
    ),
    );
  }
}