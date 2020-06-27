import 'package:eppointer/pages/appointments_home.dart';
import 'package:eppointer/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  /*final Function toggleView;
  SignIn({ this.toggleView });*/

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            //LOGO GOES HERE
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Center(
                child: Container(
                  // height: 150,
                  // width: 200,
                  child: Image(
                    image: AssetImage('assets/images/hnm.jpg'),
                    height: 150,
                    width: 200,
                  ),
                ),
              ),
            ),
            //SizedBox(height: 20.0),
            TextFormField(
              validator: (val) => val.isEmpty ? 'Enter an email' : null,
              onChanged: (val) {
                setState(() => email = val);
              },
            ),
            SizedBox(height: 20.0),
            TextFormField(
                validator: (val) =>
                    val.length < 6 ? 'Enter a 6+char password' : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }),
            SizedBox(height: 20.0),
            RaisedButton(
              color: Colors.pink[400],
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  dynamic result =
                      await _auth.signInWithEmailAndPassword(email, password);
                  if (result == null) {
                    setState(() => error = 'invalid credentials');
                  }
                }
              },
            ),
            SizedBox(height: 12.0),
            Text(
              error,
              style: TextStyle(color: Colors.red, fontSize: 14.0),
            ),
          ]),
        ),
      ),
    );
  }
}
