import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../models/theme.dart';

class Login extends StatefulWidget {
  final _formkey = GlobalKey<FormState>();

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

  // Widget LoginBtn(BuildContext context,Key key) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(vertical: 22.0),
  //     width: double.infinity,
  //     child: Padding(
  //       padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
  //       child: FloatingActionButton(
  //         backgroundColor: const Color.fromRGBO(255, 87, 34, 1.0),
  //         elevation: 3.0,
  //         hoverColor: Color.fromRGBO(221, 44, 0, 1),
  //         onPressed: () {
  //           if(_formkey.currentState!.validate()){
  //             print("Validated");
  //
  //           }
  //           else{
  //             print("Not validate");
  //           }
  //         },
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: const Text(
  //           'LOGIN',
  //           style: TextStyle(
  //             color: Colors.white,
  //             letterSpacing: 2,
  //             fontSize: 18.0,
  //             fontWeight: FontWeight.bold,
  //             fontFamily: 'sourceSansPro',
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

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
      onTap: () => print('Sign Up Button Pressed'),
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
    var _sizee = MediaQuery.of(context).size;
    bool press = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Stack(
            children: <Widget>[
              Container(
                height: _sizee.height,
                width: _sizee.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  height: _sizee.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: _sizee.height * 0.04,
                      ),
                      Text(
                        'Sign In',
                        style: defaultTheme.textTheme.titleMedium,
                      ),
                      SizedBox(height: _sizee.height * 0.060),
                      TextFormField(
                        controller: email,
                        style: defaultTheme.textTheme.bodySmall,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 87, 34, 1),
                                width: _sizee.width * 0.006),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 87, 34, 1),
                                width: _sizee.width * 0.006),
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
                        height: _sizee.height * 0.015,
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
                                width: _sizee.width * 0.006),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 87, 34, 1),
                                width: _sizee.width * 0.006),
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
                        height: _sizee.height * 0.035,
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
                                print("Validated");
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
                      SizedBox(height: _sizee.height * 0.010),
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

// const TextStylee = TextStyle(
//   color: Colors.black,
//   fontWeight: FontWeight.w400,
//   fontFamily: 'sourceSansPro',
//   fontSize: 16,
//   letterSpacing: 2,
// );
//
// const LabelStylee = TextStyle(
//   color: Colors.black,
//   fontWeight: FontWeight.w500,
//   fontFamily: 'sourceSansPro',
//   fontSize: 16,
//   letterSpacing: 2,
// );
//
// final BoxDecorationStylee = BoxDecoration(
//   color: Colors.white,
//   borderRadius: BorderRadius.circular(15.0),
//   border: Border.all(
//       color: Color.fromRGBO(221, 44, 0, 0.3),
//       width: 2,
//       style: BorderStyle.solid),
//
// );

// Widget Email() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       const Text(
//         'Email',
//         style: LabelStylee,
//       ),
//
//       const SizedBox(height: 7.0),
//
//       Container(
//         alignment: Alignment.center,
//         decoration: BoxDecorationStylee,
//         height: 50.0,
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(15, 10, 0, 20),
//           child: const TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(
//               color: Colors.black,
//               fontFamily: 'sourceSansPro',
//               fontSize: 17.5,
//             ),
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 14.0),
//               suffixIcon: Icon(
//                 Icons.email,
//                 color: Colors.black,
//               ),
//               hintText: ' Enter Email',
//               hintStyle: TextStylee,
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }
//
// Widget Password() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       const Text(
//         'Password',
//         style: LabelStylee,
//       ),
//       const SizedBox(height: 7.0),
//       Container(
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecorationStylee,
//         height: 50.0,
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(15, 10, 0, 20),
//           child: TextFormField(
//             obscureText: true,
//             style: TextStyle(
//               color: Colors.black,
//               fontFamily: 'sourceSansPro',
//               fontSize: 17.5,
//             ),
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 14.0),
//               suffixIcon: Icon(
//                 Icons.remove_red_eye,
//                 color: Colors.black,
//               ),
//               hintText: ' Enter Password',
//               hintStyle: TextStylee,
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }
