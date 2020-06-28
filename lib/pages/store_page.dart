import 'package:eppointer/UI/reviews_list.dart';
import 'package:eppointer/main.dart';
import 'package:flutter/material.dart';
import 'package:eppointer/models/store_model.dart';

import 'appointments_home.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  var categories = [
    "Groceries",
    "Clothing",
    "Chemist",
  ];

  @override
  Widget build(BuildContext context) {
    // Store store = stores[index];
    // //Index to be received from store page
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.width) * 0.6,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E3131),
                    image: DecorationImage(
                      image: AssetImage('assets/images/satya.jpg'),
                      fit: BoxFit.fill,
                    ),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        //stores.storeName[0],
                        //to be taken from store list
                        'Satya Vijay Store',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(children: <Widget>[
                      //Can make modularly or can construct in db itself
                      Text('Groceries'), //Category
                      Text(' - '), //Divider
                      //Tags
                      Text('Imported Products '),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Text(
                        ' Nearby Delivery',
                      ),
                    ]),
                    SizedBox(height: 5),
                    Text(
                      'Shortened address, City Name',
                      style: TextStyle(),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          'Store Timings',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorDark,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(
                            onPressed: () => print("here phone no"),
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.call,
                              size: 20,
                            ),
                            color: Colors.white,
                            iconSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Monday to Friday - ',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black87,
                          ),
                        ),
                        TextSpan(
                          text: '11AM - 1PM',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Container(
                          height: 25,
                          width: 30,
                          child: IconButton(
                            onPressed: () => print("here address go"),
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.directions,
                              size: 35,
                            ),
                            color: Theme.of(context).primaryColorDark,
                            //iconSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 310,
                      child: Text(
                        'Address detailed description, name of place, name of building, sector, city, state, country',
                        softWrap: true,
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Reviews',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Container(
                          height: 25,
                          width: 30,
                          child: IconButton(
                            onPressed: () => print("here phone no"),
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.star,
                              size: 25,
                            ),
                            color: Theme.of(context).primaryColor,
                            //iconSize: 10,
                          ),
                        ),
                        Text('3.5', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Container(
                    //   width: 310,
                    //   child: Text(
                    //     'Address detailed description, name of place, name of building, sector, city, state, country',
                    //     softWrap: true,
                    //   ),
                    // ),
                    Container(height: 300, child: ReviewsList()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
