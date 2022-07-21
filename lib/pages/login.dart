import 'package:flutter/material.dart';

import '../models/theme.dart';

class Login extends StatefulWidget {
  final _formkey = GlobalKey<FormState>();

  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget Forgot() {
    return GestureDetector(
      onTap: () {
        print('a');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const <Widget>[
          Text(
            "Forgot Password?",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'sourceSansPro',
              fontSize: 14.5,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
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
        SizedBox(height: 22.0),
        Text(
          'Continue with',
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
      padding: const EdgeInsets.symmetric(vertical: 28.0),
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
            width: 30,
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

  Widget SignupBtn() {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushReplacementNamed('/Signup'),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: 'sourceSansPro',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ' Sign Up',
              style: TextStyle(
                color: Color.fromRGBO(255, 87, 34, 1.0),
                fontSize: 18.0,
                fontFamily: 'sourceSansPro',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    var _size = MediaQuery.of(context).size;
    bool press = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Stack(
            children: <Widget>[
              Container(
                height: _size.height,
                width: _size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  height: _size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: _size.height * 0.04,
                      ),
                      Text(
                        'Sign In',
                        style: defaultTheme.textTheme.titleMedium,
                      ),
                      SizedBox(height: _size.height * 0.060),
                      TextFormField(
                        controller: email,
                        style: defaultTheme.textTheme.bodySmall,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(255, 87, 34, 1),
                                width: _size.width * 0.006),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(255, 87, 34, 1),
                                width: _size.width * 0.006),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Email Address',
                          hintStyle: defaultTheme.textTheme.bodyMedium,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email Id cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: _size.height * 0.015,
                      ),
                      TextFormField(
                        controller: password,
                        style: defaultTheme.textTheme.bodySmall,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: press,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 87, 34, 1),
                                width: _size.width * 0.006),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 87, 34, 1),
                                width: _size.width * 0.006),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: defaultTheme.textTheme.bodyMedium,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Enter at least 6 character";
                          }

                          return null;
                        },
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: _size.height * 0.035,
                      ),
                      Forgot(),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 22.0),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                          child: FloatingActionButton(
                            backgroundColor:
                                const Color.fromRGBO(255, 87, 34, 1.0),
                            elevation: 3.0,
                            hoverColor: Color.fromRGBO(221, 44, 0, 1),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.of(context)
                                    .pushReplacementNamed('/Home');
                              } else {
                                print("Not validate");
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Text(
                              'LOGIN',
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
                      SizedBox(height: _size.height * 0.010),
                      SignupBtn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
