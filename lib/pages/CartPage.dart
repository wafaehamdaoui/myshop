import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/AppBarWidget.dart';
import '../widgets/CartBottomNavBar.dart';
import '../widgets/DrawerWidget.dart';
class CartPage extends StatelessWidget {

   List names = [
    "Hand Bag",
    "Tory Burch",
    "Hobo Bag",
    "Backpack Bag"
  ];
  static List prices =[
    "49",
    "64",
    "109",
    "39",
  ];

 static int calculateTotal(List prices) {
  int total = 0;
  for (String price in prices) {
    total += int.parse(price);
  }
  return total;
}

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
                      "Order List",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    for(int i=0; i<4; i++)
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
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        CupertinoIcons.plus,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        (i+1).toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                        ),
                                      ),
                                      Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Container(
                          padding: EdgeInsets.all(20),
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
                            ],
                          ),
                          child: Column(children: [
                            Padding(padding: EdgeInsets.symmetric(
                              vertical: 10,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "Sub-Total:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  Text(
                                    "\$"+calculateTotal(prices).toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                              ],),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Delievery Charge:",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "\$20",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total:",
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$"+(calculateTotal(prices)+20).toString(),
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                          ],),
                        ),),
                ]),
            ),
          )
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}