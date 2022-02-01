import 'package:dart_basics/home_work_2_6/CalculationIntegral.dart';
import 'package:dart_basics/home_work_2_6/CollectionHelper.dart';
import 'package:dart_basics/home_work_2_6/DelimetersCalculator.dart';

import 'BinaryDecimal.dart';
import 'NumberFromDegree.dart';
import 'Point.dart';
import 'User.dart';

/**
 * Что нужно сделать
    Реализуйте пакет (библиотеку классов), в которую поместите методы и классы,
    предлагаемые в заданиях ниже. Для тестирования методов можно создать
    функцию void main(). Каждая задача данного задания познакомит вас с
    определёнными возможностями языка Dart и научит работе с различными
    типами данных.
 */
void main(List<String> arguments) {
  // 1. Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод,
  // который разбивает число на простые множители и возвращает их.
  DelimetersCalculator calculator = DelimetersCalculator();
  print('Gcd value =  + ${calculator.calculationGcd(30, 12)}');
  print('Lcm value =  + ${calculator.calculationLcm(5, 3)}');

  print("=============================================================");
  // 2. Реализуйте методы для преобразования целых чисел из десятичной
  // системы в двоичную и обратно.
  BinaryDecimal decimal = BinaryDecimal();
  decimal.toBinary(232);
  decimal.toDecimal("11101000");

  print("=============================================================");
  // 3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
  // Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  CollectionHelper toCollection = CollectionHelper();
  String text =
      "This morning 9 I get up at a half past six o’clock. It’s still dark. "
      "I feel tired. I went 7 to bed at 1 am and did not 4  8 sleep enough. 6 "
      "If a person 5 doesn’t sleep eight hours, 21 it’s unhealthy, 1 I know. 8 "
      "But today  4 I take an exam. 3.5 It starts at 9 am and I have to take "
      "a 7 -hour bus if I want t 5 o arrive on time. I’m going to take a cold "
      "shower, to have a big coffee 9 before getting there.";
  toCollection.parseStringToNumCollection(text);

  print("=============================================================");
  // 4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен
  // соотносить слово и количество его вхождений в данную коллекцию.
  print(toCollection.parseStringToMapCollection(text));

  print("=============================================================");
  // 5. Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого
  // другого. Реализуйте метод, возвращающий цифры без повторений, которые
  // встречаются в данной строке. Однако цифры встречаются в виде английских
  // слов от zero до nine. Например, в результате строки ‘one, two, zero, zero’
  // мы получим следующий результат: [1, 2, 0]. Если в строке есть слова, не
  // являющиеся цифрами от 0 до 9, пропускайте их.
  text =
  "zero, one, one, five, nine, two, three, cat, dog, four, five, six, seven, eight, three, cat, zero, nine";
  print(toCollection.parseStringToDecimalSetCollection(text));

  print("=============================================================");
  // 6. Реализуйте класс Point, который описывает точку в трёхмерном
  // пространстве. У данного класса реализуйте метод distanceTo(Point another),
  // который возвращает расстояние от данной точки до точки в параметре. По
  // желанию можете реализовать метод, принимающий три точки в трёхмерном
  // пространстве и возвращающий площадь треугольника, который образуют данные
  // точки. Реализуйте factory-конструкторы для данного класса, возвращающие
  // начало координат, и ещё несколько на своё усмотрение (например,
  // конструктор, возвращающий точку с координатами [1,1,1], которая
  // определяет единичный вектор).
  Point point = Point(4, 5, 6);
  print('Point =  + ${point.toString()}');
  Point pointStart = Point.start();
  print('PointStart=  + ${pointStart.toString()}');
  Point pointVector = Point.unitVector();
  print('PointVector =  + ${pointVector.toString()}');
  Point another = Point(2, 4, 5);
  print("Distance =${point.distanceTo(another)}");

  print("=============================================================");
  // 7. Реализуйте метод, который вычисляет корень любой заданной степени из
  // числа. Реализуйте данный метод как extension-метод для num. Алгоритм
  // можете взять на википедии как «Алгоритм нахождения корня n-й степени».
  // Запрещается использовать методы math. В случае когда значение вернуть
  // невозможно, необходимо бросать исключение с описанием ошибки.
  NumberFromDegree fromDegree = NumberFromDegree();
  print("NumberFromDegree answer = ${fromDegree.getNumberFromDegree(144, 2)}");

  print("=============================================================");
  // 8. Создайте класс User, у которого есть поле email. Реализуйте два
  // наследника данного класса AdminUser и GeneralUser. Реализуйте mixin над
  // классом User, у которого будет метод getMailSystem, который возвращает
  // значение из email, которое находится после @. Например, если email
  // пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте
  // данный миксин на AdminUser. Далее реализуйте класс
  // UserManager<T extends User>, у которого будет храниться список
  // пользователей и будут методы добавления или удаления их. Также в
  // UserManager реализуйте метод, который выведет почту всех пользователей,
  // однако если пользователь admin, будет выведено значение после @.
  // Проверьте реализованные методы на практике.
  var generalUser321 = GeneralUser("321@mail.ru");
  var generalUserMM = GeneralUser("mm@mm.mm");
  UserManager manager = UserManager();
  manager.addUser(GeneralUser("123@gmail.com"));
  manager.addUser(AdminUser("admin123@gmail.com"));
  manager.addUser(generalUser321);
  manager.addUser(AdminUser("admin321@mail.ru"));
  manager.addUser(generalUserMM);
  manager.addUser(GeneralUser("go@gmail.com"));


  print("print AllUsers:");
  manager.printAllUsers();
  manager.removeUser(generalUser321);
  manager.removeUser(generalUserMM);
  print("\nprint AllUsers after removing:");
  manager.printAllUsers();

  print("=============================================================");
  // 9. (Усложнённое). Реализуйте метод, который вычисляет значение
  // определённого интеграла Римана в заданных значениях и с заданной
  // точностью разбиения. По возможности учтите случаи, когда функция имеет
  // точки разрыва. Реализованный метод должен принимать функцию,
  // точки x1 и x2, точность разбиения.
  CalculationIntegral calculationIntegral = CalculationIntegral();
  calculationIntegral.calculate(12, 25, 0.01);

}
