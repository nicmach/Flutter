main() {
  double type1 = 5.0;
  int type2 = 87;
  String type3 = "educative";
  bool type4 = true;

  print(type1 is int);
  print(type2 is int);
  print(type3 is String);
  print(type4 is double);
  print(type4 is! double);

  /*

  There are three typecast operators:

    as - typecast
    is - True if the object has the specified type
    is! - False if the object has the specified type

  */
}
