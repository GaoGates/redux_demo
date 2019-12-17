import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview_test/grid/page.dart';

import 'entrance/page.dart';

Widget createApp() {
  final AbstractRoutes routes =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    'entracne_page': EntrancePage(),
    'grid_page': GridPage(),
  });

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('entracne_page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
