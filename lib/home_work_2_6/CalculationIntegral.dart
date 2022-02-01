import 'dart:math';

class CalculationIntegral {
  void calculate(double x1, double x2, double eps) {
    //prevEps-предыдущее вычисленное значение интеграла
    double prevEps = eps + 1;
    // newEps-новое, с большим x.
    double newEps = 0;

    for (int x = 2; (x <= 4) || (((newEps - prevEps).abs()) > eps); x *= 2) {
      double h;
      double sum2 = 0;
      double sum4 = 0;
      double sum = 0;
      //Шаг интегрирования.
      h = (x2 - x1) / (2 * x);
      for (int i = 1; i <= 2 * x - 1; i += 2) {
        //Значения с нечётными индексами, которые нужно умножить на 4.
        sum4 += sinFromValue(x1 + h * i);
        //Значения с чётными индексами, которые нужно умножить на 2.
        sum2 += sinFromValue(x1 + h * (i + 1));
      }
      //Отнимаем значение f(b) так как ранее прибавили его дважды.
      sum = sinFromValue(x1) + 4 * sum4 + 2 * sum2 - sinFromValue(x2);
      prevEps = newEps;
      newEps = (h / 3) * sum;
    }
    print(newEps);
  }

  double sinFromValue(double x) {
    return sin(x * x + 2 * x);
  }
}
