import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:projectapp_flutter_application/Screens/loadingScreen.dart';
import 'package:projectapp_flutter_application/widgets/DrawerMenuWidget.dart';

import '../styles/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          "PROJECT APP",
          style: TextStyle(color: KFontColor),
        ),
        backgroundColor: kPrimary,
      ),
      drawer: DrawerMenuWidget(),
      body: SpinKitWave(
        color: Colors.redAccent,
        size: 200,
        duration: Duration(seconds: 3),
      ),
    );

    // body: Loading());
  }
}
