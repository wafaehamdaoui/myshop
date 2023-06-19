
import 'package:flutter/material.dart';
import 'package:myshop/dbHelper/mongodb.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = new TextEditingController();
  var passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
        children: [
          Text(
            "Login Page",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              ElevatedButton(onPressed: () {
                check( emailController.text, passwordController.text);
              }, child: Text("Log in")),
            ],
          ),
          SizedBox(
                height: 20,
              ),

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                },
                child: Text("Don't Have Account? Register Now"),
              ),
        ],
      ),
      ),
    ),);
  }
  Future<void> check(String uemail, String upassword) async{
    var result = await MongoDatabase.query(uemail,upassword);
    if (result=="success") {
      Navigator.pushNamed(context, "/home");
    }else{
       ScaffoldMessenger.of(context)
     .showSnackBar(SnackBar(content: Text("Login failed try again!")));
    } 
    _clearAll();
  }
  void _clearAll(){
    emailController.text = "";
    passwordController.text = "";
  }
}