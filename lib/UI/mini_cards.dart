import 'package:flutter/material.dart';

class MiniCards extends StatelessWidget {
  final cardStart = const Color(0xffEF473A);
  final cardEnd = const Color(0xffCB2D3E);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.black12,
            offset: new Offset(0, 6),
            blurRadius: 8,
          )
        ],
        borderRadius: BorderRadius.circular(6.0),
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [cardStart, cardEnd],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.local_grocery_store,
            color: Colors.white,
            size: 40.0,
          ),
          Text(
            'Groceries',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 16,
              color: const Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
