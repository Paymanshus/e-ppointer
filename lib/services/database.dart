import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  //Reference for user details collection
  final CollectionReference user_details = Firestore.instance.collection('User Details');

  //Reference for Shop details collection
  final CollectionReference shop_details = Firestore.instance.collection('Shop Details');

  //Reference for user booking collection
  final CollectionReference user_booking = Firestore.instance.collection('User Booking');

  //Reference for user details collection
  final CollectionReference shop_booking = Firestore.instance.collection('Shop Bookings');

  //update user data - for registration and editing data
  Future updateUserData(String name, String email, double phone) async {

    return user_details.document(uid).setData({
      'name': name,
      'Email': email,
      'Phone No.': phone,
    });

  }

  //update shop data - for registraion and editing data
  Future updateShopData(String shop_name, String address, double people_allowed) async {

    return shop_details.document(uid).setData({
      'Name': shop_name,
      'Address': address,
      'People Allowed': people_allowed,
    });

  }

  Future updateUserBooking(String shop_id, int booking_id, double no_of_people, DateTime date) async {

    return user_booking.document(uid).setData({
      shop_id: {
        'Booking ID': booking_id,
        'Date and Time': date,
        'No. Of People': no_of_people,
      }
    });

  }

  Future updateShopBooking(String cust_id, int booking_id, double no_of_people, DateTime date) async {

    return shop_booking.document(uid).setData({
      cust_id: {
        'Booking ID': booking_id,
        'Date and Time': date,
        'No. Of People': no_of_people,
      }
    });

  }
}