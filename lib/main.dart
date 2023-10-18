import 'package:flutter/material.dart';

import 'layout/basketball_points_screen.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballPointsScreen(),
    );
  }
}