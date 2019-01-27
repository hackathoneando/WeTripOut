import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'user.dart';

class Session {
  static final Session _singleton = Session._createSingleton();
  User user;

  factory Session() => _singleton;

  Session._createSingleton();

  Future<bool> authenticateSession({String email, String password}) async {
    FirebaseUser firebaseUser = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (firebaseUser == null) {
      user = User.connect(firebaseUser: firebaseUser);
      return true;
    }
    return false;
  }

  Future<bool> createUser({String email, String password}) async {
    List<DocumentSnapshot> documents = (await Firestore.instance
            .collection('users')
            .where('email', isEqualTo: email)
            .getDocuments())
        .documents;
    if (documents.isEmpty) {
      user = User.create(email: email, password: password);
      return true;
    }
    return false;
  }
  
}
