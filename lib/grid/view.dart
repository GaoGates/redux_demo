import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Grid页面'),
    ),
    body: Text("grid页面"),
  );
}
