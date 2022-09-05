import 'dart:io';

/*

The final-keyword-variable is initialized only once at run time (e.g. through user input) 
and cannot be changed after that.

The constant-keyword-variable is initialized on compile time (i.e. it is set by the programmer)

*/
main() {
  final name = stdin.readLineSync();
  if (name == null) {
    print("Fuck you (you were supposed to enter something");
  }
  else
  {
    print("Hello " + name);
  }

  const constName = "Constantine";
}
