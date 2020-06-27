import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _rememberMe = false;

  Widget _buildForgotPasswordButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black26),
            child: Checkbox(
              value: _rememberMe,
              checkColor: const Color(0xFFBF3528),
              activeColor: Colors.black12,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButtonGoogle() {
    return Container(
      //padding: EdgeInsets.only(top: 15.0),
      height: 45,
      width: double.infinity,
      child: RaisedButton(
        elevation: 6.0,
        onPressed: () => print('Google Login Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: const Color(0xFF4285F4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage('assets/images/google.png'),
                height: 30,
                width: 30,
              ),
            ),
            Text(
              '   Sign Up with Google',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Material(
      elevation: 6,
      child: Container(
        width: double.infinity,
        //padding: EdgeInsets.symmetric(vertical: 12),
        height: 45,
        decoration: BoxDecoration(
          // boxShadow: [
          //   new BoxShadow(
          //     color: Colors.black12,
          //     offset: new Offset(0, 6),
          //     blurRadius: 8,
          //   ),
          // ],
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [Color(0xFFF24333), Color(0xFFC42021)],
          ),
        ),
        child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                print('Log In Button Clicked');
              },
              child: Center(
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            )),
      ),
    );
  }

  Widget _buildLoginButtonFacebook() {
    return Container(
      height: 45,
      //padding: EdgeInsets.only(top: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 6.0,
        onPressed: () => print('Google Login Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: const Color(0xFF4267B2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage('assets/images/facebook.png'),
                height: 30,
                width: 30,
              ),
            ),
            Text(
              '   Sign Up with Facebook',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              //BG decoration
              ),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.fromLTRB(40, 120, 40, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
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
                Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Email',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: const Color(0xFFF4877D),
                        ),
                      ),
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(top: -10.0, left: 10.0),
                          //hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                              //Input text style here
                              ),
                          //prefixIcon: Icon(Icons.email, color: Colors.white,)
                        ),
                      ),
                    ),
                    //SPACING
                    SizedBox(height: 15),
                    //PASSWORD
                    Text('Password',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: const Color(0xFFF4877D),
                        ),
                      ),
                      height: 40,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(top: -10.0, left: 10.0),
                          //hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                              //Input text style here
                              ),
                          //prefixIcon: Icon(Icons.email, color: Colors.white,)
                        ),
                      ),
                    ),
                    Row(children: <Widget>[
                      _buildForgotPasswordButton(),
                      Spacer(),
                      _buildRememberMeCheckbox(),
                    ]),
                    _buildLoginButton(),
                    SizedBox(height: 30),
                    _buildLoginButtonGoogle(),
                    SizedBox(height: 15),
                    _buildLoginButtonFacebook(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
