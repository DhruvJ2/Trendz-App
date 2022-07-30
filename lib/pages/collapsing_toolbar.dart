import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trendz_app/models/theme.dart';

class CollapsingToolbar extends StatefulWidget {
  @override
  State<CollapsingToolbar> createState() => _CollapsingToolbarState();
}

class _CollapsingToolbarState extends State<CollapsingToolbar> {
  double ratting = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double rating = 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4,
                width: size.width,
                child: Image.asset(
                  'assets/images/feature.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 18,
                left: 17,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(255, 87, 34, 1),
                        width: 2,
                      )),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () => {},
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.35,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  height: size.height * 0.70,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Title',
                          style: defaultTheme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: size.height * 0.018,
                        ),
                        Row(
                          children: <Widget>[
                            RatingBar.builder(
                              updateOnDrag: true,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemSize: 35,
                              onRatingUpdate: (rating) {
                                setState(() {
                                  this.ratting = rating;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Rating: $ratting',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'sourceSansPro',
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.030,
                        ),
                        Text(
                          'Description',
                          style: defaultTheme.textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: size.height * 0.004,
                        ),
                        Text(
                          'Lorem Ipsum is simply dummy text of thffkjasnjkfasdnffnakdnfand e printing and typesetting industry. Lorem Ipsum has been the industrys standard . It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
                          style: defaultTheme.textTheme.bodySmall,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: size.height * 0.025,
                        ),
                        Text(
                          'Source : Pinterest',
                          style: defaultTheme.textTheme.bodyMedium,
                        ),
                        // SizedBox(
                        //   height: size.height * 0.002,
                        // ),
                        // Text('Pinterest',
                        // style: defaultTheme.textTheme.bodySmall,),

                        SizedBox(
                          height: size.height * 0.040,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 30,
                right: 30,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: size.height * 0.08,
                        width: size.width * 0.275,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(255, 87, 34, 1),
                                    width: 2),
                              ),
                              // backgroundColor: Colors.white,
                              // foregroundColor: Color.fromRGBO(255, 87, 34, 1),
                              shadowColor: Color.fromRGBO(255, 87, 34, 1),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back),
                            label: Text(
                              'Prev',
                              style: defaultTheme.textTheme.bodyMedium,
                            ))),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Container(
                      child: FloatingActionButton(
                        splashColor: Color.fromRGBO(255, 87, 34, 1),
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(255, 87, 34, 1), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      width: size.width * 0.20,
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Container(
                        height: size.height * 0.08,
                        width: size.width * 0.275,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(255, 87, 34, 1),
                                    width: 2),
                              ),
                              // backgroundColor: Colors.white,
                              // foregroundColor: Color.fromRGBO(255, 87, 34, 1),
                              shadowColor: Color.fromRGBO(255, 87, 34, 1),
                            ),
                            onPressed: () {},
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: defaultTheme.textTheme.bodyMedium,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(Icons.arrow_forward_sharp),
                              ],
                            ))),
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
