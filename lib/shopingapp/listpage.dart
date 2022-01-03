import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
List img = [
  'https://icon-library.com/images/breakfast-icon-png/breakfast-icon-png-6.jpg',
  'https://icons.iconarchive.com/icons/google/noto-emoji-food-drink/256/32395-green-salad-icon.png',
  'https://www.pngrepo.com/download/43115/burger.png',
  'https://cdn4.iconfinder.com/data/icons/food-drinks-caramel-vol-1/512/LASAGNA-512.png',
  'https://assets.wprock.fr/emoji/joypixels/512/1f372.png'];
List fee=['Rs 100','Rs 200','Rs 120','Rs 80','Rs 200'];
List name=['Egg Roll Masala','Niçoise Salad.','Chicha Burger',' Sponge Cake ','Vegetable soup'];
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      child: ListView.builder(itemCount: img.length,
        itemBuilder: (context,index)=>Container(
          margin: EdgeInsets.only(bottom: 20,left: 20),
          padding: EdgeInsets.only(left: 10,top: 5),
          height: 100,
          width: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFeff6e7),),
        child: Row(children: [
          Image.network(img[index]),
          SizedBox(width: 20,),
          Column(
            children: [
              Text(name[index],style: TextStyle(fontSize: 23),),
              Text(fee[index],style: TextStyle(fontSize: 30,color: Colors.red,fontStyle: FontStyle.italic),),

          ],)
        ],),
      ),),
    );
  }
}
