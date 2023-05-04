import 'package:flutter/material.dart';
import 'package:projectapp_flutter_application/Screens/homeScreen.dart';
import 'package:projectapp_flutter_application/widgets/DrawerMenuWidget.dart';

import 'Screens/addworkScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'PROJECT APP',
      home: HomeScreen(),
    );
  }
}
