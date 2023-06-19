import 'package:flutter/material.dart';

import '../widgets/AppBarWidget.dart';
import '../widgets/DrawerWidget.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          AppBarWidget(),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/woman.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Wafae HAMDAOUI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('wafae@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+212 615279342'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Fes, Morocco'),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}

