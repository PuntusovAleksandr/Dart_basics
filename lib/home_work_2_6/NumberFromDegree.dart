extension on num {
  num checkNum(int degree) {
    if (this <= 0) {
      throw Exception("Unable to extract power from a number less than 1");
    } else if (degree == 0) {
      return 1;
    } else if (degree == 1) {
      return this;
    } else {
      return this;
    }
  }
}

class NumberFromDegree {
  num getNumberFromDegree(num value, int degree) {
    value = value.checkNum(degree);
    var answer = value / degree;
    double eps = 0.001;
    while (answer - value / answer > eps) {
      answer = 0.5 * (answer + value / answer);
      // print("Iteration: answer = $answer");
    }
    return answer;
  }
}
