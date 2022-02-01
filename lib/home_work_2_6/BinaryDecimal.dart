class BinaryDecimal {
  void toBinary(int a) {
    String answerText = "";
    while (a != 0) {
      int b = a % 2;
      a = (a / 2).toInt();
      answerText = b.toString() + answerText;
    }
    print(answerText);
  }

  void toDecimal(String a) {
    print(int.parse(a, radix:2));

  }
}
