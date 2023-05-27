import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/AppBarWidget.dart';
import '../widgets/CategoriesWidget.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/NewestItemWidget.dart';
import '../widgets/PopularItemWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(padding: const EdgeInsets.symmetric(
            vertical: 10, 
            horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]),
                child: Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(children: [
                  const Icon(
                    CupertinoIcons.search, 
                    color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "What would you like to have?",
                          border: InputBorder.none,
                        ),
                      ),
                      ),
                    ),
                    const Icon(Icons.filter_list),
                ],),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          ),
          CategoriesWidget(),
          //popular
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          //popular Items
          PopularItemWidget(),
          //newest Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Newest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          //popular Items
          NewestItemWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ]),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
          ),
      ),
    );
  }
}