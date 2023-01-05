import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OriginalLanguageScreen extends StatelessWidget {
  const OriginalLanguageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            expands: true,
            maxLines: null,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter Text',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
