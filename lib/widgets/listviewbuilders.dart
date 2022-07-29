import 'package:flutter/material.dart';
import 'package:trendz_app/models/data.dart';

import '../services/api.dart';

class ImageListviewBuilder extends StatefulWidget {
  ImageListviewBuilder({Key? key}) : super(key: key);

  @override
  State<ImageListviewBuilder> createState() => _ImageListviewBuilderState();
}

class _ImageListviewBuilderState extends State<ImageListviewBuilder> {
  late Future<FlipkartModel> futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = getFlipkartData();
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(8.0),
      height: _size.height * 0.37,
      child: FutureBuilder<FlipkartModel>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var currentUser = snapshot.data!;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: _size.width * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          border: Border.all(
                            color: _theme.primaryColor,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  top: 10.0,
                                ),
                                height: _size.height * 0.15,
                                width: _size.width * 0.45,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      currentUser.img.index[index],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 8.0,
                                ),
                                child: Text(
                                  currentUser.name.index[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
