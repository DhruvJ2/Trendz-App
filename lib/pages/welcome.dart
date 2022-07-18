import 'package:flutter/material.dart';
import 'package:trendz_app/pages/login.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _sizee = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: _sizee.height,
        width: _sizee.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(234, 218, 195, 1),
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: _sizee.height * 0.350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              // child: Stack(
              //   children: <Widget>[
              // Positioned(
              //     left: 35,
              //     width: 75,
              //     height: 175,
              //     child: Container(
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image:
              //                   AssetImage('assets/images/light-1.png'))),
              //     )),
              // Positioned(
              //     left: 130,
              //     width: 85,
              //     height: 130,
              //     child: Container(
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image:
              //                   AssetImage('assets/images/light-2.png'))),
              //     )),
              // Positioned(
              //     right: 40,
              //     top: 5,
              //     width: 85,
              //     height: 150,
              //     child: Container(
              //       decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image: AssetImage('assets/images/clock.png'))),
              //     )),
              //   ],
              // ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sourceSansPro'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(43, 10, 43, 28),
              child: Text("Keep yourself updated with your latest trends",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      fontFamily: 'sourceSansPro')),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
              child: Container(
                height: _sizee.height * 0.075,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 87, 34, 1.0),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sourceSansPro',
                    ),
                  ),
                ),
              ),
            ),
            SignInWithText(),
            SocialBtnRow(),
            SizedBox(
              height: _sizee.height * 0.003,
            ),
            GestureDetector(
              onTap: () => print('Sign Up Button Pressed'),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 87, 34, 1.0),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

Widget SignInWithText() {
  return Column(
    children: const <Widget>[
      Text(
        '- OR -',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13.5,
          fontFamily: 'sourceSansPro',
        ),
      ),
      SizedBox(height: 14.0),
      Text(
        'Sign up with',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontFamily: 'sourceSansPro',
          fontSize: 18,
        ),
      ),
    ],
  );
}

Widget SocialBtn(Function onTap, AssetImage image) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 60.0,
      width: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(221, 44, 0, .5),
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: image,
        ),
      ),
    ),
  );
}

Widget SocialBtnRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialBtn(
          () => print('Login with twitter'),
          const AssetImage(
            'assets/images/twitter.png',
          ),
        ),
        SizedBox(
          width: 27,
        ),
        SocialBtn(
          () => print('Login with Google'),
          const AssetImage(
            'assets/images/google.png',
          ),
        ),
      ],
    ),
  );
}
