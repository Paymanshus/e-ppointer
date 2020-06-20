import 'package:flutter/material.dart';

import 'package:eppointer/models/store_model.dart';

import 'package:eppointer/models/store_model.dart';

class StoresList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: stores.length,
        itemBuilder: (BuildContext context, int index) {
          Store store = stores[index];
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: 75.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border:
                        Border.all(width: 0.6, color: const Color(0xFFBF3528))),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image(
                        image: AssetImage(store.storeImg),
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              store.storeName,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: const Color(0xFFF24333),
                                ),
                                Text(
                                  store.review.toString(),
                                ),
                              ],
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  store.category,
                                ),
                                Icon(
                                  Icons.timer,
                                  color: Theme.of(context).accentColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
