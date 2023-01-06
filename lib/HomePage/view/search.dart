import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../ApiServices/api_services.dart';
import '../../models/language_model.dart';

class SearchLanguage extends SearchDelegate {

  TranslatorApi _translatorApi = TranslatorApi(); //create instance of tran

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: FutureBuilder<List<LanguageApi>>(
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
                          '${languageData[index].data}',
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
          }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search here..'),
    );
  }
}
