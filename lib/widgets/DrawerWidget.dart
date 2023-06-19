import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,

              ),
              accountName: Text("wafae",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              accountEmail: Text("wafae@gmail.com",style: TextStyle(fontSize: 16),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/woman.png"),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "profilPage");
            },
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: Text(
              "My Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            title: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "wishListPage");
            },
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            title: Text(
              "My Wish List",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}