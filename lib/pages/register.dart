//import 'dart:html';

import 'package:eppointer/services/auth.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  
  /*final Function toggleView;
  Register({ this.toggleView });*/
  
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  @override

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  
  //text field state
  String email='';
  String password='';
  String error = '';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        elevation: 0.0,
        title: Text('Register In To Appointment'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.person), 
            label: Text('Sign In')
          ),
        ]
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val){
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val.length < 6 ? 'Enter a password of at least 6 chars' : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if(_formKey.currentState.validate()){
                    dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() => error = 'please supply a valid email');
                    }
                  }
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color:Colors.red, fontSize: 14.0),
              ),
            ]
          ),
        ),
      ),
    );
  }
}