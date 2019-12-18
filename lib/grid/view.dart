import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
      appBar: new AppBar(
        title: new Text('Grid页面'),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 1 / 1,
        padding: EdgeInsets.all(20),
        children: new List.generate(state.models.length, (index) {
          return Center(
            child: Card(
              color: Colors.lightBlueAccent,
              child: InkWell(
                splashColor: Colors.red.withAlpha(100),
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(state.models[index].name),
                  ),
                ),
              ),
            ),
          );
        }),
      ));
}
