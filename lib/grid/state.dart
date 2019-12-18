import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_listview_test/model.dart';

class GridState implements Cloneable<GridState> {

  List<GridModel> models;

  @override
  GridState clone() {
    return GridState()
        ..models = models;
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
