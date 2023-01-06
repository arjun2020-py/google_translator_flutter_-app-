import 'package:flutter/material.dart';

class CountryLanguageList extends StatelessWidget {
  const CountryLanguageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 62, 68, 74),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            color: Color(0xff121416),
            child: ListTile(
              title: Text(
                'Country name',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
