import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button_pressed_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141619),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Text Translation',
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Divider(
                  thickness: 0.2,
                  color: Color(0xffffffff),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const ButtonPressedScreen(),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: const [
                    Text(
                      'Translate From ',
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '(',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Germany',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      ')',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150.h,
                  child: Card(
                    color: Color.fromARGB(255, 62, 68, 74),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter Text',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
