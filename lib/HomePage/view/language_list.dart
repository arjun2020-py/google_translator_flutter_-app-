import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_translator/HomePage/view/country_card_list.dart';

class LanguageListScreen extends StatelessWidget {
  const LanguageListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 62, 68, 74),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      height: 500.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 280.r, top: 20.r),
            child: Text(
              'From',
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      borderSide: const BorderSide(color: Colors.white)),
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 62, 68, 74),
                  hintText: 'Search....',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 230.r),
            child: Text(
              'All Languages',
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(child: CountryLanguageList()) //5
        ],
      ),
    );
  }
}
