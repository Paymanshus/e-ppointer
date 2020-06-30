import 'package:eppointer/pages/saved.dart';
import 'package:flutter/material.dart';

import 'appointments_home.dart';
import 'discover.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  final List<Widget> _children = [
    //Register(),
    //SignIn(),
    AppointmentsHome(),
    DiscoverPage(),
    SavedPage(),
  ];

  tapped(int tappedIndex) {
    setState(() {
      _currentTab = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: _children[_currentTab],
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            primaryColor: const Color(0xFFBF3528),
            disabledColor: Theme.of(context).accentColor,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentTab,
            onTap: tapped,
            /*
            onTap: (int value) {
              setState(() {
                _currentTab = value;
              });
            },
            */
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  size: 30,
                ),
                /*
                activeIcon: Icon(
                  Icons.library_books,
                  size: 30,
                  color: const Color(0xFFBF3528),
                ),
                */
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                title: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
