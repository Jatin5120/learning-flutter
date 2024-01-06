import 'package:firebase_auth/firebase_auth.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/utils/utils.dart';

class AuthService {
  const AuthService();

  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> anonymousLogin() async {
    try {
      Utility.showLoader();
      final creds = await _firebaseAuth.signInAnonymously();
      Utility.closeDialog();
      AppLog.success(creds);
      return true;
    } on FirebaseAuthException catch (e, st) {
      Utility.closeLoader();
      Utility.handleFirebaseExceptions(e, st);
      return false;
    } catch (e, st) {
      Utility.closeLoader();
      AppLog.error(e, st);
      return false;
    }
  }

  Future<void> login(UserModel user) async {
    try {
      Utility.showLoader();
      var users = await CollectionInterface.user.where('email', isEqualTo: user.email).get();
      Utility.closeLoader();
      UserModel? myUser;
      for (var doc in users.docs) {
        var data = doc.data();
        AppLog('${data.runtimeType}: $data');
        if (data.email == user.email) {
          myUser = data;
          break;
        }
      }
      AppLog.success(myUser);
    } catch (e, st) {
      Utility.closeLoader();
      AppLog.error(e, st);
    }
  }

  Future<void> signup(UserModel user) async {
    try {
      Utility.showLoader();
      await CollectionInterface.user.add(user);
      Utility.closeLoader();
      AppLog.success('User Added successfully');
    } catch (e, st) {
      Utility.closeLoader();
      AppLog.error(e, st);
    }
  }
}
