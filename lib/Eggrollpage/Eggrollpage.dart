import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingpage/shopingapp/listpage.dart';

class EggRollPage extends StatefulWidget {
  String img,name;
  EggRollPage(this.img,this.name);
  @override
  State<EggRollPage> createState() => _EggRollPageState(img,name);
}

class _EggRollPageState extends State<EggRollPage> {
  String img,name;
  _EggRollPageState(this.img,this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc3df8b),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                child: Hero(tag: img,
                    child: Image.network(img.toString(), fit: BoxFit.contain,)),
              ),
              Container(
                width: double.infinity,
                height: 453,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Rs.100',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[700]),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Color(0xFFc3df8b),
                              borderRadius: BorderRadius.circular(10)),
                          height: 40,
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '-',
                                style: TextStyle(fontSize: 40),
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '+',
                                style: TextStyle(fontSize: 35),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              '130g',
                              style: TextStyle(fontSize: 25, color: Colors.red),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Calories',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              '460ccal',
                              style: TextStyle(fontSize: 25, color: Colors.red),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Protein',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              '30g',
                              style: TextStyle(fontSize: 25, color: Colors.red),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Items:',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Transform.translate translates the child of the transform widget by a'
                      ' specified amount in the X and Y direction',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFc3df8b)),
                      height: 70,
                      width: 350,
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
          Positioned(top: 50,
            child: GestureDetector(onTap: (){
              Navigator.pop(context);
            },
              child: Container(margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                height: 50,width: 50,
                child: Icon(Icons.arrow_back_ios),),
            ),
          )
        ],
      ),
    );
  }
}
