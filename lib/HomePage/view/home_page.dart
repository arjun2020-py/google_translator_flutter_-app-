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
      body: SafeArea(
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

            
              ButtonPressedScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

