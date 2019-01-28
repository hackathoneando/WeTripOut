import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'trip.dart';

class User {
  int id;
  String name;
  DateTime bornDate;
  FirebaseUser firebaseUser;
  List<User> friends;
  List<Trip> trips;

  User.connect({this.firebaseUser}) {
    List<DocumentSnapshot> documents;
    Firestore.instance
        .collection('users/'+firebaseUser.uid)
        .getDocuments()
        .then((value) => documents = value.documents);

    //TODO download user data from firebase
  }

  User.create({email, password, this.bornDate, this.name}) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => this.firebaseUser = value);
  }
}
