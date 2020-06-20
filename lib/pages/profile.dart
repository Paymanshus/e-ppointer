import 'package:eppointer/main.dart';
import 'package:flutter/material.dart';

import 'appointments_home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.width) * 0.6,
                decoration: BoxDecoration(
                  color: const Color(0xFF2E3131),
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: Row(children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: 30,
                    //onPressed: () => Navigator.push(context,
                    //    MaterialPageRoute(builder: (context) => MyApp())),
                    onPressed: () => Navigator.pop(context),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
