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
                  'Men Polo Neck Black T-Shirt',
                  '\Rs 699',
                  'assets/images/TSHIRT.webp',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'Women Polo Neck T-Shirt',
                  '\Rs 287',
                  'assets/images/tshir.webp',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'HP Core i3 11th Gen',
                  '\Rs 36,900',
                  'assets/images/lap.webp',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'Lenovo IdeaPad 3',
                  '\Rs 39,490',
                  'assets/images/lapt.webp',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'APPLE iPhone 13 Pro Max',
                  'RS 1,79,900',
                  'assets/images/iphone.webp',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'U.S. POLO ASSN. Men Blue Jeans',
                  'Rs 1,819',
                  'assets/images/jeans.webp',
                  false,
                  true,
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
                      height: _size.height * 0.19,
                      width: 180.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain)))),
              SizedBox(height: 8.0),
              Text(price,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 87, 34, 1),
                      fontFamily: 'sourceSansPro',
                      fontSize: 12.0)),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 3, 15, 0),
                child: Text(name,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'sourceSansPro',
                        fontSize: 12.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
