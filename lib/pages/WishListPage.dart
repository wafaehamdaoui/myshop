import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/AppBarWidget.dart';
import '../widgets/CartBottomNavBar.dart';
import '../widgets/DrawerWidget.dart';
class WishListPage extends StatelessWidget {
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
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Wish List",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    for(int i=0; i<7; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 9),
                      child: Container(
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ]),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/images/bag_"+i.toString()+".png",
                                  height: 80,
                                  width: 150,
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Sophisticated. Functional. Stylish.",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "\$"+prices[i],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.symmetric(vertical: 10,),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.favorite_sharp,
                                      color: Colors.red,
                                      size: 30,)
                                ),
                                )
                            
                              
                            ],
                          ),
                        ),
                      ),
                ]),
            ),
          )
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}