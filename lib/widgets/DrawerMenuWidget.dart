// ignore: file_names
// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projectapp_flutter_application/Screens/addworkScreen.dart';
import 'package:projectapp_flutter_application/Screens/homeScreen.dart';

import '../Screens/loginScreen.dart';
import '../styles/styles.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      width: 300,
      child: Column(children: [
        Icon(Icons.person, size: 100, color: kIconColor),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 30,
            color: kIconColor,
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const HomeScreen();
            }));
          },
          title: Text(
            "หน้าหลัก",
            style: TextStyle(color: KFontColor),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.add_circle_outline_sharp,
            size: 30,
            color: kIconColor,
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const AddWorkScreen();
            }));
          },
          title: Text(
            "โพสต์ขายรูปภาพ",
            style: TextStyle(color: KFontColor),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.work_rounded,
            size: 30,
            color: kIconColor,
          ),
          onTap: (
              //t
              ) {},
          title: Text(
            "โพสต์ขายรูปภาพของฉัน",
            style: TextStyle(color: KFontColor),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.shopping_cart,
            size: 30,
            color: kIconColor,
          ),
          onTap: (
              //t
              ) {},
          title: Text(
            "รูปภาพที่ซื้อ",
            style: TextStyle(color: KFontColor),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.monetization_on_sharp,
            size: 30,
            color: kIconColor,
          ),
          onTap: (
              //t
              ) {},
          title: Text(
            "เติมเงิน",
            style: TextStyle(color: KFontColor),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            size: 30,
            color: kIconColor,
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return const LoginScreen();
            }));
          },
          title: Text(
            "ออกจากระบบ",
            style: TextStyle(color: KFontColor),
          ),
        )
      ]),
    );
    ;
  }
}
