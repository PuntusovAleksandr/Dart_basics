class DelimetersCalculator {
  int calculationGcd(int i, int j) {
    if (i == 0) return j;
    while (j != 0) {
      if (i > j){
        i -= j;
      }      else{
        j -= i;
      }
    }
    return i;
  }

  double calculationLcm(int i, int j) {
    int gcd = calculationGcd(i, j);
    return i * (j / gcd);
  }
}
