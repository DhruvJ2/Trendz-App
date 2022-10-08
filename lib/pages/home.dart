import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trendz_app/pages/searchresult.dart';
import 'package:trendz_app/services/auth.dart';
import '../models/theme.dart';
import '../widgets/listviewbuilders.dart';

class Home extends StatelessWidget {
  final AuthServices _auth = AuthServices();
  Home({Key? key}) : super(key: key);

  final TextEditingController _search = TextEditingController();
  List<String> text = ['Laptop', 'Camera', 'Tripod', 'Mobile'];
  List<String> image = [
    'assets/images/instagram.png',
    'assets/images/facebook.png',
    'assets/images/pinterest.png',
    'assets/images/twitter.png'
  ];
  List<String> categoryImage = [
    'assets/images/clothes-hanger.png',
    'assets/images/laptop-screen.png',
    'assets/images/furnitures.png',
    'assets/images/electric-appliance.png',
  ];
  List<String> category = ['Fashion', 'Electronics', 'Furniture', 'Appliances'];

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _theme = Theme.of(context);
    final _user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: _size.height * 1.2,
          width: _size.width,
          child: Column(
            children: [
              Container(
                height: _size.height * 0.13,
                width: _size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(),
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
                        controller: _search,
                        textAlign: TextAlign.left,
                        onFieldSubmitted: (search) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SearchResult(search),
                            ),
                          );
                          _search.clear();
                        },
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
                              text[value],
                              style: _theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              ImageListviewBuilder(),
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
                height: _size.height * 0.13,
                padding: EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: _size.width * 0.19,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(255, 87, 34, 1)
                                        .withOpacity(0.2),
                                    spreadRadius: 1.0,
                                    offset: Offset(5, 5),
                                    blurRadius: 1.0)
                              ],
                            ),
                            child: Card(
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.0)),
                              elevation: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage(image[index]),
                                ),
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
                height: _size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                          width: _size.width * 0.20,
                          child: Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                elevation: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    height: 60.0,
                                    width: 60.0,
                                    fit: BoxFit.contain,
                                    image: AssetImage(categoryImage[index]),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: _size.height * 0.005,
                              ),
                              Text(category[index],
                                  style: TextStyle(
                                      fontSize: 11.7,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                            ],
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
