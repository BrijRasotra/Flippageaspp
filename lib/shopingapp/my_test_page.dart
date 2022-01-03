import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopingpage/Eggrollpage/Eggrollpage.dart';
import 'package:shopingpage/shopingapp/custompage.dart';

import 'listpage.dart';

List img = [
  'https://icon-library.com/images/breakfast-icon-png/breakfast-icon-png-6.jpg',
  'https://icons.iconarchive.com/icons/google/noto-emoji-food-drink/256/32395-green-salad-icon.png',
  'https://www.pngrepo.com/download/43115/burger.png',
  'https://cdn4.iconfinder.com/data/icons/food-drinks-caramel-vol-1/512/LASAGNA-512.png',
  'https://assets.wprock.fr/emoji/joypixels/512/1f372.png'
];
List fee = ['Rs 100', 'Rs 200', 'Rs 120', 'Rs 80', 'Rs 200'];
List name = [
  'Egg Roll Masala',
  'Niçoise Salad.',
  'Chicha Burger',
  ' Sponge Cake ',
  'Vegetable soup'
];
double page = 0.0;

class MyTestPage extends StatefulWidget {
  @override
  _MyTestPageState createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  double xyPOS = 0.0;
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 100),
          color: Colors.transparent,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello,',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Shoilee Weedly',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFc3df8b)),
                                ),
                              ],
                            ),
                            SizedBox(
                                width: 100,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Search',
                                  ),
                                )),
                            Icon(Icons.lock),
                          ],
                        ),
                      ),
                      Container(
                        height: 260,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 30, left: 30, right: 20, bottom: 20),
                                padding: EdgeInsets.only(
                                    top: 50, right: 5, left: 5),
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFc3df8b)),
                                child: Column(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                        },
                                    ),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -20,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EggRollPage(img[index],name[index])));
                                  },
                                  child: Container(
                                    height: 140,
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: Hero(
                                      tag: img[index],
                                      child: Image.network(
                                        img[index],
                                        alignment: Alignment((page - index).abs(), 0),),
                                    ),
                                    ),
                                  ),
                                ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red),
                                  child: Text(fee[index]),
                                ),
                              ),
                            ],
                          ),
                          itemCount: img.length,
                        ),
                      ),
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      ListPage()
                    ]),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          top: xyPOS,
          duration: Duration(seconds: 1),
          curve: Curves.elasticOut,
          child: ClipPath(
            clipper: MyCustomPath(),
            child: Container(
              alignment: Alignment.center,
              height: 170,
              width: 170,
              decoration: BoxDecoration(color: Color(0xFFc3df8b)),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 50,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          color: Color(0xFFc3df8b),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png'),
                decoration: BoxDecoration(shape: BoxShape.circle),
              ),
              _buildMenu("vegetables", 0, GlobalKey()),
              _buildMenu("Chickens", 1, GlobalKey()),
              _buildMenu("Beef", 2, GlobalKey()),
              _buildMenu("Thai", 3, GlobalKey()),
              Container(
                margin: EdgeInsets.all(10),
                child: Icon(Icons.menu),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  GestureDetector _buildMenu(
      String menu, int index, GlobalKey<State<StatefulWidget>> globalKey) {
    return GestureDetector(
      onTap: () {
        setState(() {
          RenderBox box =
              globalKey.currentContext!.findRenderObject() as RenderBox;
          Offset position =
              box.localToGlobal(Offset.zero); //this is global position
          xyPOS = position.dy - 120;
        });
      },
      child: RotatedBox(
        quarterTurns:3,
        child: Text(
          menu,
          key: globalKey,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

