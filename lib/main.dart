import 'package:eppointer/pages/home.dart';
import 'package:eppointer/pages/login.dart';
import 'package:eppointer/pages/profile.dart';
import 'package:eppointer/pages/register.dart';
import 'package:flutter/material.dart';
import 'pages/login_new.dart';

import 'pages/discover.dart';
import 'pages/appointments_home.dart';
import 'pages/saved.dart';

import 'UI/nav_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentTab = 0;
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  /*bool changeSignInValue() {
    if(showSignIn){
      return SignIn(toggleView: toggleView);
    }
    else{
      return Register(toggleView: toggleView);
    }
  }*/

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
    /*if(showSignIn){
      return SignIn(toggleView: toggleView);
    }
    else{
      return Register(toggleView: toggleView);
    };
    if(showSignIn == false){
      _currentTab = 0;
    }
    else{
      _currentTab = 1;
    }*/
    return MaterialApp(
      title: 'e-ppointer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Color(0xFFF4877D),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Open Sans'),
      home: SigninScreen(),
    );
  }
}
