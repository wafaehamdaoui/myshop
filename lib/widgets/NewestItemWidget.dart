import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemWidget extends StatelessWidget {
    List names = [
    "Crossbody Bag",
    "Hand Bag",
    "Tory Burch",
    "Hobo Bag",
    "Shoulder Bag",
    "Tote Bag",
    "Hand Bag",
    "Big Bag",
    "Backpack Bag"
  ];
  List prices =[
    "49",
    "64",
    "109",
    "39",
    "54",
    "66",
    "54",
    "104",
    "58"
  ];
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(children: [
        for(int i=0; i<5; i++)
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10,),
          child: Container(
            width: 380,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/bag_"+i.toString()+".png",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        names[i],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Sophisticated. Functional. Stylish.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating:1, 
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        onRatingUpdate: (index) {},
                      ),
                      Text(
                        "\$"+prices[i],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Icon(Icons.favorite_border, color: Colors.red, size: 26,),
                          Icon(CupertinoIcons.cart, color: Colors.red, size: 26,)
                        ],
                      ),
                      )
              ],
            ),
          ),
          ),
      ],),
      ),
    );
  }
}