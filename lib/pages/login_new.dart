import 'package:eppointer/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:eppointer/services/auth.dart';
import 'package:flutter/services.dart';
// import 'package:email_validator/email_validator.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
  String email = '';
  String password = '';
  String error = '';
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
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(40.0),
            //   child: Image(
            //     image: AssetImage('assets/images/google.png'),
            //     height: 30,
            //     width: 30,
            //   ),
            // ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/google.png'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
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

  Widget _buildLoginButton(String email, String password) {
    return Container(
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
            onTap: () async {
              print('-------------------------\n\n\n\n\n\n\n');
              print('Log In Button Clicked');
              print(email);
              print(password);
              print('\n-------------------------');
              
              //Authenticate the email and password here
              // var checkEmail = email;
              // if (EmailValidator.validate(email)){
                dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                if (result == null) {
                  setState(() => error = 'invalid credentials');
                  print('-------------------------\n\n\n\n\n\n\n');
                  print(error + '\n\n\n\n\n\n\n');
                  print('-------------------------\n\n\n\n\n\n\n');
                }
                else {
                  print('-------------------------\n\n\n\n\n\n\n');
                  print('Sign in successful');
                  print(result + '\n\n\n\n\n\n\n');
                  print('-------------------------\n\n\n\n\n\n\n');
                }
              // else {
              //   print('Error signing in');
              // }
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

    // final myEmail = TextEditingController();
    // final myPassword = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    String email = '';
    String password = '';

    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  //BG decoration
                  ),
            ),
            Container(
              key: _formKey,
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
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
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
                            // controller: myEmail,
                            onChanged: (text) {
                              email = text;
                            },
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
                            onChanged: (text) {
                              password = text;
                            },
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
                        // print(email),
                        // print(password),
                        _buildLoginButton(email, password),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Center(
                            child: Text(
                              "--- OR ---",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                        _buildLoginButtonGoogle(),
                        SizedBox(height: 15),
                        _buildLoginButtonFacebook(),
                        SizedBox(height: 10),
                        Center(
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register())),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Sign Up",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
