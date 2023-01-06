import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'language_list.dart';

class ButtonPressedScreen extends StatelessWidget {
  const ButtonPressedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 130.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r))),
                builder: (context) {
                  return LanguageListScreen(
                    buttonType: true,
                  ); //4
                },
              );
            },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 62, 68, 74),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                side: BorderSide(
                    width: 3.w, color: const Color.fromARGB(255, 62, 68, 74))),
            child: const Text('Germany'),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.swap_horiz_outlined,
              color: Color(0xff5a5b5c),
            )),
        SizedBox(
          width: 130.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r))),
                builder: (context) {
                  return LanguageListScreen(
                    buttonType: false,
                  ); //4
                },
              );
            },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 62, 68, 74),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                side: BorderSide(
                    width: 3.w, color: const Color.fromARGB(255, 62, 68, 74))),
            child: const Text('Slovenija'),
          ),
        ),
      ],
    );
  }
}
