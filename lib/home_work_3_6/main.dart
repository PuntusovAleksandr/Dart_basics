// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height/2;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // // Задание 1.
            // // Подключите пакет https://pub.dev/packages/flutter_svg из
            // // pub.dev. Добавьте в assets svg изображение и выведите его с
            // // помощью этого виджета. С помощью виджета загрузите изображение
            // // из сети и отобразите это изображение на экране.В этом примере
            // // спикер отобразил логотип Flutter.
            // Image.network("https://wroom.ru/i/cars2/volkswagen_eos_1_2.jpg"),
            // Image.asset("assets/images/busy_order_locale.png"),
            // SvgPicture.asset('assets/images_svg/author.svg'),
            // SvgPicture.asset(
            //   'assets/images_svg/ic_motivation.svg',
            // ),
            // SvgPicture.asset('assets/images_svg/logo_5_element.svg'),
            // SvgPicture.network(
            //   'https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg',
            //   semanticsLabel: 'A shark?!',
            //   placeholderBuilder: (BuildContext context) =>
            //       Container(
            //           padding: const EdgeInsets.all(30.0),
            //           child: const CircularProgressIndicator()),
            // ),

//            Задание 2.
//            Подключите пакет из git-репозитория. Следуя инструкциям по
//            установке этого пакета, отобразите виджет carousel slider на
//            экране. https://github.com/serenader2014/flutter_carousel_slider
//            После подключения flutter_carousel_slider и flutter_svg экран
//            приложения должен выглядеть подобным образом:
            CarouselSlider(
              options: CarouselOptions(
                height: height,
                autoPlay: true,

                enlargeCenterPage: true,
                viewportFraction: 0.5,

                aspectRatio: 16/9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: imgList
                  .map((item) => Container(
                        child: Center(
                            child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          height: height,
                        )),
                      ))
                  .toList(),
            ),

        // Задание 3.
            // Подключите любым способом ( git / pub.dev ) пакет для
            // автоматической сортировки импортов
            // https://pub.dev/packages/import_sorter. Добавьте его в dev_
            // dependencies проекта, чтобы код этого пакета не попал в
            // production-сборку: этот функционал нужен исключительно во время
            // разработки. Отсортируйте импорты с помощью этой библиотеки.

          ],
        ),
      ),
    );
  }
}
