import 'package:eppointer/UI/appointments_list.dart';
import 'package:eppointer/UI/stores_list.dart';
import 'package:flutter/material.dart';

import 'package:eppointer/UI/mini_cards.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  var categories = [
    "Groceries",
    "Clothing",
    "Chemist",
    "Groceries",
    "Clothing",
    "Chemist",
    "Groceries",
    "Clothing",
    "Chemist"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,

                          color: Theme.of(context).accentColor,

                          //size:24.0,
                        ),
                        Text(
                          'Vile Parle West',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(flex: 2),
                        Expanded(
                          child: CircleAvatar(

                              //backgroundColor: Colors.white,

                              ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color(0xFF2E3131),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            'Search Through Stores',
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        Spacer(flex: 3),
                        Expanded(
                          child: Icon(Icons.search,
                              color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 10),
                        child: Text(
                          'Browse Shops',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Row(children: <Widget>[
                      Text(
                        'Browse Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(flex: 3),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => print('See All'),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children:
                        categories.map((title) => MiniCards(title)).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
