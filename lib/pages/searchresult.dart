import 'package:flutter/material.dart';
import 'package:trendz_app/models/data.dart';

import '../services/api.dart';

class SearchResult extends StatefulWidget {
  String search;
  SearchResult(this.search, {Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  late Future<FlipkartModel> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = getFlipkartData(widget.search);
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (() => Navigator.of(context).pop()),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: _theme.primaryColor,
          elevation: 0.0,
        ),
        body: Center(
          child: FutureBuilder<FlipkartModel>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var currentUser = snapshot.data!;
                  return Container(
                    child: ListView.builder(
                      addAutomaticKeepAlives: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: snapshot.data!.img.index.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: _size.width,
                              height: _size.height * 0.2,
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
                                elevation: 0,
                                child: Row(
                                  children: [
                                    Container(
                                      height: _size.height * 0.2,
                                      width: _size.width * 0.40,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image(
                                          fit: BoxFit.contain,
                                          image: NetworkImage(
                                            currentUser.img.index[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                            horizontal: 10.0,
                                          ),
                                          child: Text(
                                            currentUser.name.index[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8.0,
                                            horizontal: 10.0,
                                          ),
                                          child: Text(
                                            currentUser.price.index[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return CircularProgressIndicator(
                  color: _theme.primaryColor,
                  backgroundColor: _theme.backgroundColor,
                  strokeWidth: 5.0,
                );
              }),
        ));
  }
}
