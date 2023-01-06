import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_translator/ApiServices/api_services.dart';
import 'package:google_translator/models/language_model.dart';

class CountryLanguageList extends StatelessWidget {
  CountryLanguageList({super.key});

  TranslatorApi _translatorApi = TranslatorApi(); //create instance of tran

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 62, 68, 74),
        body: FutureBuilder<List<LanguageApi>>(
            future: _translatorApi.fetchLanugaes(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var languageData = snapshot.data!;

                return ListView.builder(
                  itemCount: languageData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        color: const Color(0xff121416),
                        child: ListTile(
                          title: Text(
                            languageData[index].data.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
