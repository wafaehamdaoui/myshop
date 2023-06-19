import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel MongoDbModelFromJson(String str) => MongoDbModel.fromJson(json.decode(str));

String MongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
    ObjectId id;
    String name;
    String email;
    String password;

    MongoDbModel({
        required this.id,
        required this.name,
        required this.email,
        required this.password,
    });

    factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
);


    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
    };
}
