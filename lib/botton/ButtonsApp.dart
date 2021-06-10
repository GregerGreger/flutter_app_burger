import 'package:flutter/material.dart';
import 'package:flutter_app_burger/Product/ComboList.dart';
import 'package:flutter_app_burger/Product/FavoritList.dart';
import 'package:flutter_app_burger/Product/GrillList.dart';
import 'package:flutter_app_burger/Product/InsectList.dart';
import 'package:get/get.dart';

import '../widgets/ComboWidget.dart';
import '../widgets/FavoritWidget.dart';
import '../widgets/GrillWidget.dart';

import '../widgets/InsectWidget.dart';
import 'OneButton.dart';


class ButtonsApp extends StatefulWidget {
  @override
  _ButtonsAppState createState() => _ButtonsAppState();
}

class _ButtonsAppState extends State<ButtonsApp> {
  List nameButton = ['Популярные блюда', 'Комбо', 'Креветки', 'Гриль'];
  List pages = ['/', '/comboVidget', '/insectVidget', '/gillVidget'];


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: nameButton.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.toNamed(pages[index]);
                  },
                  child: OneButton(nameButton[index]),
                )));
  }
}
