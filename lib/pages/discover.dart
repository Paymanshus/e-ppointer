import 'package:eppointer/UI/appointments_list.dart';
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
    return Column(children: <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
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
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1,
                padding: const EdgeInsets.all(40.0),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: categories.map((title) => MiniCards(title)).toList(),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
