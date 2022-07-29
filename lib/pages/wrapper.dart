import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:provider/provider.dart';
import 'package:trendz_app/models/user.dart';
import 'package:trendz_app/pages/home.dart';
import 'package:trendz_app/pages/welcome.dart';

import '../widgets/HiddenDrawer.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<MyUser?>(context);

    if (_user == null)
      return WelcomeScreen();
    else
      return HiddenDrawer();
  }
}
