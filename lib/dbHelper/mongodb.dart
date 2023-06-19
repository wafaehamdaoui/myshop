
import 'package:mongo_dart/mongo_dart.dart';
import 'package:myshop/dbHelper/MongoDbModel.dart';
import 'package:myshop/dbHelper/constant.dart';


class MongoDatabase{
  static var db, userCollection;
  static connect() async{
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    userCollection = db.collection(USER_COLLECTION);

  }
  static Future<String> addUser(MongoDbModel data) async{
    try{
      var result = await userCollection.insertOne(data.toJson());
      if (result.isSuccess){
        return "success";
      }else{
        return "failed";
      }
    } catch(e){
      print(e.toString());
      return e.toString();
    }
  }
  static Future<String> query(String email, String passwd) async{
    try{
      final result = await userCollection.findOne(where.eq('email', email).eq('password', passwd));
      if (result != null) {
        return 'success';
    } else {
      return 'failed';
    }
    } catch(e){
      print(e.toString());
      return e.toString();
    }
  }
}