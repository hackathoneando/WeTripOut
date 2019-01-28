import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'trip.dart';
import 'post.dart';

class User {
  int id;
  String name;
  DateTime bornDate;
  FirebaseUser firebaseUser;
  List<User> friends;
  List<Trip> trips;
  List<Post> posts;

  User.connect({this.firebaseUser}) {
    List<DocumentSnapshot> documents;
    Firestore.instance
        .collection('users/' + firebaseUser.uid)
        .getDocuments()
        .then((value) => documents = value.documents);
    print(documents.toString());
    //TODO download user data from firebase
  }

  User.create({email, password, this.bornDate, this.name}) {
    Firestore.instance.runTransaction((Transaction ts) async {
      firebaseUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: email.toString(), password: password);
      DocumentReference doc = await Firestore.instance
          .collection('users')
          .document(firebaseUser.uid);
      ts.set(doc, <String, dynamic>{'name': this.name, 'email': email});
    }, timeout: const Duration(seconds: 15));
  }
}
