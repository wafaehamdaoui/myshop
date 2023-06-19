import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'package:myshop/dbHelper/MongoDbModel.dart';
import 'package:myshop/dbHelper/mongodb.dart';

class MongoDbInsert extends StatefulWidget {
  const MongoDbInsert({super.key});

  @override
  State<MongoDbInsert> createState() => _MongoDbInsertState();
}

class _MongoDbInsertState extends State<MongoDbInsert> {
  var nameController = new TextEditingController();
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
            "Register Page",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Name"),
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
            height: 15,
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(onPressed: () {
                _fakeData();
              }, child: Text("Generate Data")),
              ElevatedButton(onPressed: () {
                _insertData(nameController.text, emailController.text, passwordController.text);
              }, child: Text("Insert Data"),
              ),
            ],
          ),
          SizedBox(
                height: 5,
              ),

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text("Already have an account? Login"),
              ),
        ],
      ),
      ),
    ),);
  }
  Future<void> _insertData(String uname, String uemail, String upassword) async{
    var uid = M.ObjectId();
    final data = MongoDbModel(id: uid, name: uname, email: uemail, password: upassword);
    var result = await MongoDatabase.addUser(data);
    if (result=="success") {
      Navigator.pushNamed(context, "/login");
    }else{
      ScaffoldMessenger.of(context)
     .showSnackBar(SnackBar(content: Text("Registration failed. Please try again!")));
    } 
    
    _clearAll();
  }
  void _clearAll(){
    nameController.text = "";
    emailController.text = "";
    passwordController.text = "";
  }
  void _fakeData(){
    setState(() {
      nameController.text=faker.person.name();
      emailController.text=faker.internet.email();
      passwordController.text=faker.internet.password();
    });
  }
}