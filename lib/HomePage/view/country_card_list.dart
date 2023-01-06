import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryLanguageList extends StatelessWidget {
  const CountryLanguageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 68, 74),
      body: StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return FutureBuilder<Object>(
            future: null,
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.r))),
                      color: const Color(0xff121416),
                      child: const ListTile(
                        title: Text(
                          'Country name',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          );
        }
      ),
    );
  }
}
