import 'package:doctors_app/screens/homeScreen/homeScreenView.dart';
import 'package:doctors_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getThemeData()[0],
      title: 'Biolege - Doctor\'s App',
      debugShowCheckedModeBanner: false,
      home: HomeScreenView(),
    );
  }
}
