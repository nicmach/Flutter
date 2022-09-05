/*
Even though Dart is a static typed programming language
you can use the keyword dynamic to delcare dynamic variables.

Example:
*/

main() {
  dynamic dynamicVariable = 'A string';
  print(dynamicVariable);

  dynamicVariable = 5; // type int
  print(dynamicVariable);

  dynamicVariable = true; // type bool
  print(dynamicVariable);
}
