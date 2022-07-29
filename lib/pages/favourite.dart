import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.04, 15, size.width * 0.04, 10),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 85.0,
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 18.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard(
                  'Cookie mint',
                  '\$3.99',
                  'assets/cookiemint.jpg',
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie cream',
                  '\$5.99',
                  'assets/images/feature.jpg',
                  true,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie classic',
                  '\$1.99',
                  'assets/cookieclassic.jpg',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'Cookie choco',
                  '\$2.99',
                  'assets/cookiechoco.jpg',
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie choco',
                  '\$2.99',
                  'assets/cookiechoco.jpg',
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie choco',
                  '\$2.99',
                  'assets/cookiechoco.jpg',
                  true,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie choco',
                  '\$2.99',
                  'assets/cookiechoco.jpg',
                  true,
                  false,
                  context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(255, 87, 34, 1).withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite
                        ? Icon(Icons.favorite,
                            color: Color.fromRGBO(255, 87, 34, 1))
                        : Icon(Icons.favorite_border,
                            color: Color.fromRGBO(255, 87, 34, 1))
                  ],
                ),
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                      height: _size.height * 0.15,
                      width: 140.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain)))),
              SizedBox(height: 5.0),
              Text(price,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 87, 34, 1),
                      fontFamily: 'sourceSansPro',
                      fontSize: 15.0)),
              Text(name,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'sourceSansPro',
                      fontSize: 16.0)),
            ],
          ),
        ),
      ),
    );
  }
}
