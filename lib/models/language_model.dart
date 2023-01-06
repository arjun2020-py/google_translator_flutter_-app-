// To parse this JSON data, do
//
//     final languageApi = languageApiFromJson(jsonString);

import 'dart:convert';

LanguageApi languageApiFromJson(String str) => LanguageApi.fromJson(json.decode(str));

String languageApiToJson(LanguageApi data) => json.encode(data.toJson());

class LanguageApi {
    LanguageApi({
        this.data,
    });

    Data? data;

    factory LanguageApi.fromJson(Map<String, dynamic> json) => LanguageApi(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
    };
}

class Data {
    Data({
        this.languages,
    });

    List<Language>? languages;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        languages: List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "languages": List<dynamic>.from(languages!.map((x) => x.toJson())),
    };
}

class Language {
    Language({
        this.language,
    });

    String? language;

    factory Language.fromJson(Map<String, dynamic> json) => Language(
        language: json["language"],
    );

    Map<String, dynamic> toJson() => {
        "language": language,
    };
}
