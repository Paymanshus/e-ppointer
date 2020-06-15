/*import 'package:flutter/material.dart';

import 'package:eppointer/UI/nav_bar.dart';

class AppointmentsPage extends StatefulWidget {
  AppointmentsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppointmentsPageState createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  int _selectedIndex = 0;
  final shadowColor = const Color(0xFF141313);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
           Stack(
         children: <Widget>[
        Positioned(
          bottom: 45,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              if (_selectedIndex == 1) {
              _buildNavItem(Icons.library_books, true),
              _buildNavItem(Icons.search, false),
              _buildNavItem(Icons.person, false),
              }
               else if(_selectedIndex == 2) {
_buildNavItem(Icons.library_books, true),
              _buildNavItem(Icons.search, false),
              _buildNavItem(Icons.person, false),
              }
              else {

              }
              _buildNavItem(Icons.library_books, true),
              _buildNavItem(Icons.search, false),
              _buildNavItem(Icons.person, false),
            ],
          ),
        )
      ],
    );
  }
          ],
        ),
      ),
    );
  }



_buildNavItem(IconData icon, bool active) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
            color: const Color(0xFF141313),
            offset: Offset(0.0, 3.0),
            blurRadius: 6.0)
      ],
      borderRadius: BorderRadius.all(Radius.circular(13)),
    ),
    child: Icon(
      icon,
      color: active ? const Color(0xFFBF3528) : const Color(0xFFF4877D),
    ),
  );
}
*/
