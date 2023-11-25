import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/utils/utils.dart';

class AuthService {
  const AuthService._();

  static AuthService? _instance;

  static AuthService get instance {
    _instance ??= const AuthService._();
    return _instance!;
  }

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void login(UserModel user) async {
    AppLog(user);
    var userCollection = _firestore.collection(CollectionConstants.users);
    await userCollection.add(user.toMap());
    AppLog.success('User Added successfully');
  }
}
