import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'button_pressed_screen.dart';
import 'orginal_language.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              OriginalLanguageScreen(),
              SizedBox(
                height: 10.h,
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
                    'Slovenija',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ')',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
