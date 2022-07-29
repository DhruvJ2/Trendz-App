import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:trendz_app/pages/favourite.dart';
import 'package:trendz_app/pages/home.dart';
import 'package:trendz_app/pages/profile.dart';
import 'package:trendz_app/services/auth.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final _auth = AuthServices();
  final _user = FirebaseAuth.instance.currentUser!;

  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Color.fromRGBO(255, 87, 34, 1),
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Favourites',
          // ignore: prefer_const_constructors
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Color.fromRGBO(255, 87, 34, 1),
        ),
        Favourite(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Profile',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Color.fromRGBO(255, 87, 34, 1),
        ),
        Profile(),
      ),
      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Logout',
      //     baseStyle: myTextStyle,
      //     selectedStyle: myTextStyle,
      //     colorLineSelected: Color.fromRGBO(255, 87, 34, 1),
      //   ),
      //   InkWell(onTap: () async {
      //     await _auth.signOut();
      //     Navigator.of(context).pushReplacementNamed('/Welcome');
      //   }),
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return HiddenDrawerMenu(
      actionsAppBar: [
        IconButton(
          onPressed: () async {
            await _auth.signOut();
            Navigator.of(context).pushReplacementNamed('/Welcome');
          },
          icon: Icon(
            Icons.logout_rounded,
            size: 25.0,
          ),
        )
      ],
      // curveAnimation: Curves.easeInOut,
      elevationAppBar: 0.0,
      backgroundColorAppBar: const Color.fromRGBO(255, 87, 34, 1),
      screens: _pages,
      backgroundColorMenu: _theme.backgroundColor,
      initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 25.0,
    );
  }
}
