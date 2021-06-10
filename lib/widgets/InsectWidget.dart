import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Product/ComboList.dart';
import '../Product/FavoritList.dart';
import '../Product/GrillList.dart';
import '../Product/InsectList.dart';

class InsectWidget extends StatefulWidget {
  @override
  _InsectWidgetState createState() => _InsectWidgetState();
}

class _InsectWidgetState extends State<InsectWidget> {
  InsectList insectList = InsectList();
  int clasesChange = 0;
  List classes = [FavoritList(), ComboList(), InsectWidget(), GrillList()];

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 35, left: 10, right: 10, bottom: 10),
      child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Image.asset(
                      insectList.insectList[index].image,
                    ),
                    Stack(children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            )),
                      ),
                      Positioned.fill(
                        bottom: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(insectList.insectList[index].nameProduct,
                                  style: TextStyle(color: Colors.white, fontSize: 14)),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.favorite, color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('\$${insectList.insectList[index].price}',
                                  style: TextStyle(color: Colors.white, fontSize: 18)),
                              Container(
                                child: Row(
                                  children: [
                                    Text(insectList.insectList[index].count, style: TextStyle(color: Colors.white)),
                                    Icon(
                                      Icons.person,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ])
                  ]));
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.6 : 1.6);
            }),
    );

  }
}
