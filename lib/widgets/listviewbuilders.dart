import 'package:flutter/material.dart';

class ImageListviewBuilder extends StatelessWidget {
  const ImageListviewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      height: _size.height * 0.42,
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
                width: _size.width * 0.45,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0,
                  child: Stack(
                    children: [
                      Container(
                        height: _size.height * 0.38,
                        width: _size.width * 0.45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://i.pinimg.com/736x/60/d7/b6/60d7b667a5c4ccd73e94e41551a4f891.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25.0,
                        bottom: 10.0,
                        child: Text(
                          'Lorem ipsum',
                          style: TextStyle(color: Colors.white),
                        ),
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
  }
}
