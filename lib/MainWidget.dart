import 'package:flutter/material.dart';
import 'package:flutter_app_burger/widgets/FavoritWidget.dart';
import 'package:flutter_app_burger/widgets/GrillWidget.dart';
import 'botton/ButtonsApp.dart';
import 'widgets/ComboWidget.dart';
import 'widgets/InsectWidget.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp),
        actions: [Icon(Icons.info_outline)],
        title: Text('Бургер Кинг'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ButtonsApp(),
          FavoritWidget(),
//        ComboWidget(),
//        InsectWidget(),
//        GrillWidget()
        ],
      ),
    );
  }
}
