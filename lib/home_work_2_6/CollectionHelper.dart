class CollectionHelper {
  List<num> parseStringToNumCollection(String text) {
    List<String> testSplit = text.split(' ');
    List<num> listNum = <num>[];

    testSplit.forEach((element) {
      if (num.tryParse(element) != null) {
        var numParse = num.parse(element);
        listNum.add(numParse);
      }
    });
    print(listNum);
    return listNum;
  }

  Map parseStringToMapCollection(String text) {
    Map<String, int> result = Map();
    List<String> testSplit = text.split(' ');

    testSplit.forEach((element) {
      if (result.containsKey(element)) {
        result[element] = (result[element] as int) + 1;
      } else {
        result[element] = 1;
      }
    });

    return result;
  }

  Set<String> parseStringToDecimalSetCollection(String text) {
    var patternText = [
      "zero",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine"
    ];
    List<String> testSplit = text.replaceAll(",", "").split(' ');
    Set<String> result = <String>{};

    testSplit.forEach((element) {
      if (patternText.contains(element.toLowerCase())) {
        result.add(element);
      }
    });

    return result;
  }
}
