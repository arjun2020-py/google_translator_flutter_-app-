import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            onPressed: () {},
            child: const Text('Germany'),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 62, 68, 74),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                side: BorderSide(
                    width: 3.w, color: Color.fromARGB(255, 62, 68, 74))),
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
            onPressed: () {},
            child: const Text('Slovenija'),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 62, 68, 74),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                side: BorderSide(
                    width: 3.w, color: Color.fromARGB(255, 62, 68, 74))),
          ),
        ),
      ],
    );
  }
}
