import 'package:eppointer/UI/mini_cards.dart';
import 'package:eppointer/UI/reviews_list.dart';
import 'package:eppointer/main.dart';
import 'package:flutter/material.dart';

import 'appointments_home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var categories = [
    "Groceries",
    "Clothing",
    "Chemist",
  ];

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
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
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
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Center(
                  child: Text(
                    'Paymanshu Sharma', //Customer Name
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 185),
                child: Center(
                  child: Text(
                    'paymanshus@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
            child: Row(children: <Widget>[
              Text(
                'Frequently Visited',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    print('See All');
                  })
            ]),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: categories.map((title) => MiniCards(title)).toList(),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 15, 17, 0),
                child: Text('Reviews', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          ReviewsList(),
        ],
      ),
    );
  }
}
