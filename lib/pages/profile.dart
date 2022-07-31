import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';
import 'package:trendz_app/services/auth.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/images/intro1.png'),
                    width: size.width,
                    height: size.height * 0.35,
                    margin: EdgeInsets.only(bottom: size.height * 0.15),
                  ),
                  Positioned(
                    top: size.height * 0.35 - size.height * 0.11,
                    left: size.width * 0.28,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.height * 0.11,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.35 - size.height * 0.1,
                    left: size.width * 0.30,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 87, 34, 1),
                      radius: size.height * 0.1,
                      backgroundImage: AssetImage('assets/images/prof.jpg'),
                    ),
                  ),
                ],
              ),
              Center(
                  child: Text(
                _user.displayName!,
                style: defaultTheme.textTheme.titleMedium,
              )),
              SizedBox(
                height: size.height * 0.004,
              ),
              Center(
                  child: Text(
                _user.email!,
                style: defaultTheme.textTheme.titleMedium,
              )),
              SizedBox(
                height: size.height * 0.004,
              ),
              Center(
                  child: Text(
                'User is Trend Lover',
                style: defaultTheme.textTheme.bodyMedium,
              )),
              SizedBox(
                height: size.height * 0.06,
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'About',
                          style: defaultTheme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(
                      'I am a social media influencer and I also love to travel a lot. I also have an interest in mobile and laptops',
                      style: defaultTheme.textTheme.bodyMedium,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
