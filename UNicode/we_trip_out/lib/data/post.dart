import 'comment.dart';
import 'user.dart';
class Post {
  DateTime date;
  String img;
  String id;
  User owner;
  String text;
  String title;
  List<User> liked;
  List<Comment> comments;
}