class Trip {
  bool public;
  DateTime tripDate;
  DateTime creationDate;
  int dailyFee;
  int goal;
  DateTime savingTime;
  int authorID;

  Trip.create(
      {bool public,
      DateTime tripDate,
      DateTime creationDate,
      int dailyFee,
      int goal,
      DateTime savingTime,
      int authorID}) {}
}
