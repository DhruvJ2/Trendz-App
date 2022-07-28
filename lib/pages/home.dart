import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trendz_app/services/auth.dart';
import '../widgets/listviewbuilders.dart';

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _theme = Theme.of(context);
    final _user = FirebaseAuth.instance.currentUser!;
    //_user.displayName
    //_user.email
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     'HOME',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      // drawer: HiddenDrawer(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        height: _size.height * 0.09,
        width: _size.width,
        child: GNav(
          rippleColor: _theme.secondaryHeaderColor,
          hoverColor: _theme.secondaryHeaderColor,
          haptic: true,
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(color: _theme.primaryColor, width: 1),
          tabBorder: Border.all(color: _theme.primaryColor, width: 1),
          tabShadow: [BoxShadow(color: _theme.backgroundColor, blurRadius: 8)],
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 700),
          gap: 8,
          color: _theme.primaryColor,
          activeColor: _theme.primaryColor,
          iconSize: 24,
          tabBackgroundColor: _theme.backgroundColor.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.explore,
              text: 'Explore',
            ),
            GButton(
              icon: Icons.people,
              text: 'Profile',
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: _size.height * 1.4,
          width: _size.width,
          // color: _theme.backgroundColor,
          child: Column(
            children: [
              Container(
                height: _size.height * 0.13,
                width: _size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(25.0),
                  ),
                  color: _theme.primaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: _size.height * 0.06,
                      width: _size.width * 0.85,
                      margin: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      padding: EdgeInsets.only(left: 15.0),
                      decoration: BoxDecoration(
                          color: _theme.backgroundColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        onTap: () => {},
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          icon: Icon(Icons.search),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: _theme.primaryColor.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: _size.height * 0.02,
              ),
              Container(
                height: _size.height * 0.06,
                width: _size.width,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int value) {
                      return InkWell(
                        child: SizedBox(
                          height: _size.height * 0.06,
                          width: _size.width * 0.25,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Places',
                              style: _theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const ImageListviewBuilder(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Explore More',
                    style: _theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              Container(
                height: _size.height * 0.15,
                padding: EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: _size.width * 0.2,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpixlok.com%2Fwp-content%2Fuploads%2F2021%2F04%2FFlipkart-Logo-PNG-1024x1024.jpg&f=1&nofb=1'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Categories',
                    style: _theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              Container(
                height: _size.height * 0.15,
                padding: EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: _size.width * 0.2,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpixlok.com%2Fwp-content%2Fuploads%2F2021%2F04%2FFlipkart-Logo-PNG-1024x1024.jpg&f=1&nofb=1'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
