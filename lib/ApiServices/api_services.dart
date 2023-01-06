import 'dart:convert';

import 'package:google_translator/models/language_model.dart';
import 'package:http/http.dart' as http;

class TranslatorApi {
  
  
  //api get method for languages endpoint
  
  Future<List<LanguageApi>> fetchLanugaes() async {
    Uri url = Uri.parse(
        'https://google-translate1.p.rapidapi.com/language/translate/v2/languages');

    final response = await http.get(url); //'get' read data from api.

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      var lanuages =
          data.map<LanguageApi>((json) => LanguageApi.fromJson(json)).toList();

      //api values pass to the 'LanguageApi' model.

      return lanuages;
    } else {
      throw Exception('failed to load');
    }
  }
}
