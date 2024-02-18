import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreference {
  static const String cachedLanguageKey = "cachedLanguageKey";
  static const String cachedUserResponseKey = "cacheUserResponseData";

  //for language
  static const String isLanguageSet = "isLanguageSet";
  static const String cachedRegionKey = "cachedRegionKey";
  static const String isRegionHave = "isRegionHave";

  //save apple credentials
  static const String appleEmailKey = "appleEmail";
  static const String appleAuthId = "appleAuthId";

  //currency
  static const String currencyText = "currencyText";

  static Future<String> getAppleEmailData() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    return localStorage.getString(appleEmailKey) ?? "";
  }

  static Future setCurrencyText(String cur) async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString(currencyText, cur);
  }

  static Future<String> getCurrencyText() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    return localStorage.getString(currencyText) ?? "Tk";
  }

  //for langugage
  static Future setFirstLanguage() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(isLanguageSet, true);
  }

  static Future<bool> chekcLanguageSetOrNot() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(isLanguageSet) ?? false;
  }

  static Future setCacheLangauge(String localCode) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(isLanguageSet, true);
    await preferences.setString(cachedLanguageKey, localCode);
  }

  static Future<String> getCacheLangauge() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(cachedLanguageKey) ?? "English";
  }
}
