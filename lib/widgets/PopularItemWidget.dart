import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5,),
        child: Row(
          children: [
           for(int i=0; i<5; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3)
                    ),
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "ItemPage");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/bag_"+i.toString()+".png",
                          height: 130,
                        ),
                      ),
                    ),
                    Text(
                      "Big Bag",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      "Taste our Big Bag",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Text(
                          "\$50",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.favorite_border,
                          color: Colors.red,
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ),],
        ),
      ),
    );
  }
}