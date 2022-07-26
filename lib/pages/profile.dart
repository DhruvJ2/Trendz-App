import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/images/intro1.png'),
                    width: size.width,
                    height: size.height * 0.41,
                    margin: EdgeInsets.only(bottom: size.height * 0.42 / 4),
                  ),
                  Positioned(
                    top: size.height * 0.41 - size.height * 0.11 * 2 / 2,
                    left: 132.85,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.height * 0.11,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.41 - size.height * 0.1 * 2 / 2,
                    left: 140,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 87, 34, 1),
                      radius: size.height * 0.1,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ],
              ),
              Center(
                  child: Text(
                'Username',
                style: defaultTheme.textTheme.titleMedium,
              )),
              SizedBox(
                height: size.height * 0.004,
              ),
              Center(
                  child: Text(
                'email@gmail.com',
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
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit,color: Colors.black,)),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(
                      'nfasb asdvas asd vvasd vasd asdkjfasdfajsd asd as dj asd asdj ajs dj asjd v asdj vas dv asd vja sdjv asjd va d vas dv ',
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
