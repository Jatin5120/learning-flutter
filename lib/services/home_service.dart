import 'package:firebase_auth/firebase_auth.dart';
import 'package:learning_flutter/utils/utils.dart';

class HomeService {
  const HomeService();

  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> logout() async {
    try {
      await _firebaseAuth.signOut();
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
}
