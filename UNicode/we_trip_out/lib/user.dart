class User {
  int id;
  String email;
  String password;


  User.connect({this.email, this.password}) {
    //TODO download user data from firebase
  }

  User.create({String email, String password}) {

  }
}
