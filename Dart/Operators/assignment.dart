main() {
  var A = 10;
  var B = 7;

  // Bitwise and operation

  print("Before the compound assignment operator:");
  print(A);

  A &= B; // This is equivalent to A = A & B

  print("After the compound assignment operator:");
  print(A);

  A = 10;
  B = 7;

  // Truncating division

  print("Before the compound assignment operator:");
  print(A);

  A ~/= B; // This is equivalent to A = A ~/ B

  print("After the compound assignment operator:");
  print(A);
}
