import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();

  late final TextEditingController password = TextEditingController();
  late final TextEditingController email = TextEditingController();
  late final TextEditingController username = TextEditingController();

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    username.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15.0, 95.0, 0.0, 0.0),
                            child: Center(
                              child: Text(
                                'Signup',
                                style: defaultTheme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: email,
                              style: defaultTheme.textTheme.bodySmall,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 87, 34, 1),
                                      width: size.width * 0.006),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 87, 34, 1),
                                      width: size.width * 0.006),
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
                            SizedBox(height: size.height * 0.025),
                            TextFormField(
                              controller: password,
                              style: defaultTheme.textTheme.bodySmall,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 87, 34, 1),
                                      width: size.width * 0.006),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 87, 34, 1),
                                      width: size.width * 0.006),
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
                                  icon: Icon(Icons.remove_red_eye_sharp),
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
                            SizedBox(height: size.height * 0.025),
                            TextFormField(
                              controller: username,
                              style: defaultTheme.textTheme.bodySmall,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 87, 34, 1),
                                      width: size.width * 0.006),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 87, 34, 1),
                                      width: size.width * 0.006),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Username',
                                hintStyle: defaultTheme.textTheme.bodyMedium,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Username cannot be empty";
                                } else if (value.length > 14) {
                                  return "Enter at most 14 characters";
                                }
                                return null;
                              },
                              onChanged: (value) {},
                            ),
                            SizedBox(height: size.height * 0.025),
                            SizedBox(height: size.height * 0.045),
                            Container(
                              width: size.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 10),
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
                                    'Signup',
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
                            SizedBox(height: size.height * 0.045),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushReplacementNamed('/Login'),
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
                        )),
                  ]),
            ),
          ),
        ));
  }
}
