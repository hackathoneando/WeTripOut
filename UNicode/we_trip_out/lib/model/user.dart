import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'travel.dart';

class UserModel {
  int id;
  String name;
  String cover;
  String photo;
  List<UserModel> friends;
  List<TravelModel> travels;

  UserModel(this.id, this.name, this.cover, this.photo, this.friends, this.travels);
}