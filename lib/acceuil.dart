import 'package:flutter/material.dart';
import 'package:tikodc/pages/acceuil.dart';
import 'package:tikodc/pages/pInfo.dart';
import 'package:tikodc/pages/now.dart';
import 'package:tikodc/pages/pInfo.dart';
import 'package:tikodc/pages/profile.dart';

import 'pages/notification.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int _selectIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserAcceuilpage(),
    UserPluspage(),
    UserNowpage(),
    UserInfospage(),
    UserProfilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bolt_rounded),
              label: 'Now',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/tiktok_add.png',
                height: 25,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
