import 'package:flutter/material.dart';

import 'package:eppointer/models/store_model.dart';
import 'package:eppointer/models/review_model.dart';

class ReviewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (BuildContext context, int index) {
          Review review = reviews[index];
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
                        image: AssetImage(review.storeImg),
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              review.storeName,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width * 0.6),
                                  height: 30,
                                  child: Text(
                                    review.reviewDesc,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 40,
                right: 30,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 15,
                      color: const Color(0xFFF24333),
                    ),
                    Text(
                      review.reviewRating.toString(),
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
