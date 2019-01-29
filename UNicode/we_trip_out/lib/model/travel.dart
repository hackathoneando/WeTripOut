import 'user.dart';

class TravelModel {
  String title;
  String description;
  UserModel author;
  DateTime tripDate;
  DateTime creationDate;
  DateTime deadline;
  int dailyFee;
  int goal;
  bool public;

  TravelModel(this.title, this.description, this.author, this.tripDate,
      this.creationDate, this.deadline, this.dailyFee, this.goal, this.public);


}