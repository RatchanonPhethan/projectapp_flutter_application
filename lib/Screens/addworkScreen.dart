import 'dart:js_util';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../styles/styles.dart';
import '../widgets/DrawerMenuWidget.dart';
import '../widgets/customTextFormField.dart';

class AddWorkScreen extends StatelessWidget {
  const AddWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    TextEditingController titleNameTextController = TextEditingController();
    TextEditingController detailTextController = TextEditingController();
    TextEditingController priceTextController = TextEditingController();
    TextEditingController dateinput = TextEditingController();
    TextEditingController workTime = TextEditingController();

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
      body: Center(
          child: Form(
        key: formkey,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.lock, size: 120),
          ),
          customTextFormField(
            controller: titleNameTextController,
            hintText: "หัวข้องานออกแบบ",
            maxLength: 100,
            validator: (Value) {
              if (Value!.isNotEmpty) {
                if (Value.length < 10) {
                  return "กรุณากรอกหัวข้องานออกแบบมากกว่า 10 ตัวอักษร";
                } else
                  return null;
              } else {
                return "กรุณากรอกหัวข้องานออกแบบ";
              }
            },
            obscureText: false,
          ),
          customTextFormField(
            controller: detailTextController,
            hintText: "รายละเอียด",
            maxLength: 50,
            validator: (Value) {
              if (Value!.isNotEmpty) {
                if (Value.length < 10) {
                  return "กรุณากรอกรายละเอียดมากกว่า 10 ตัวอักษร";
                } else
                  return null;
              } else {
                return "กรุณากรอกรายละเอียด";
              }
            },
            obscureText: false,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            child: TextFormField(
              controller: priceTextController,
              maxLength: 50,
              maxLines: 1,
              keyboardType: TextInputType.text,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              obscureText: false,
              validator: (Value) {
                if (Value!.isNotEmpty) {
                  return null;
                } else {
                  return "กรุณากรอกราคา";
                }
              },
              decoration: const InputDecoration(
                hintText: "ราคา",
                counterText: "",
                labelText: "ราคา",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            child: TextFormField(
              controller: dateinput,
              validator: (Value) {
                if (Value!.isNotEmpty) {
                  return null;
                } else {
                  return "กรุณากรอกวันที่โพสต์งาน";
                }
              },
              decoration: const InputDecoration(
                // icon: Icon(Icons.calendar_today_rounded),
                prefixIcon: const Icon(Icons.calendar_month_outlined),
                labelText: "วันที่โพสต์งาน",
                hintText: "วันที่โพสต์งาน",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
              onTap: () async {
                DateTime? pickeddate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));

                if (pickeddate != null) {
                  dateinput.text = DateFormat('yyyy-MM-dd').format(pickeddate);

                  ;
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            child: TextFormField(
              controller: workTime,
              maxLength: 2,
              maxLines: 1,
              keyboardType: TextInputType.text,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              obscureText: false,
              onChanged: (value) {
                validator:
                (Value) {
                  if (Value!.isNotEmpty) {
                    return null;
                  } else {
                    return "กรุณากรอกเวลาในการทำงาน";
                  }
                };
              },
              decoration: const InputDecoration(
                hintText: "เวลาในการทำงาน",
                counterText: "",
                labelText: "เวลาในการทำงาน",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: SizedBox(
                height: 53,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      //
                    }
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("เพิ่ม"),
                    ],
                  ),
                ),
              ))
        ]),
      )),
    );
  }
}
