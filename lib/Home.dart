import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'botton/ButtonsApp.dart';
import 'widgets/ComboWidget.dart';
import 'widgets/FavoritWidget.dart';
import 'widgets/GrillWidget.dart';
import 'widgets/InsectWidget.dart';
import 'MainWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => FavoritWidget()),
          GetPage(name: '/comboWidget', page: () => ComboWidget()),
          GetPage(name: '/insectWidget', page: () => InsectWidget()),
          GetPage(name: '/grillWidget', page: () => GrillWidget()),
        ],
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: MainWidget());
  }
}
