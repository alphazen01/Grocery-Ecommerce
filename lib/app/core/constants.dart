import 'package:intl/intl.dart';

class Constants {
  static Duration kDuration = const Duration(seconds: 3);
  static const delayTime = Duration(seconds: 3);
  static const quicksandFont = "Quicksand";
  static const nunito = "Nunito";
  static DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  static DateFormat dateFormat24 = DateFormat("yyyy-MM-dd HH:mm:ss");
  static DateFormat timeFormat = DateFormat("HH:mm:ss");
  static String currencySymbol = "tk";
  static String reminderText =
      "You will get a warning when you’ve reached 50%, 80%, 90% left of your budget.";
  static String overspentText =
      "You will get a warning when you’ve exceeded 100% of your budget.";

  // static var lanList = [
  //   LanguageModel(
  //     id: "English",
  //     languageCode: "en",
  //     countryCode: "US",
  //     lanugaeName: "English",
  //   ),
  //   LanguageModel(
  //       id: "Bangla",
  //       languageCode: "bn",
  //       countryCode: "BN",
  //       lanugaeName: "বাংলা"),
  //   LanguageModel(
  //       id: "Japanese",
  //       languageCode: "jp",
  //       countryCode: "JP",
  //       lanugaeName: "日本語"),
  //   LanguageModel(
  //       id: "Espaniol",
  //       languageCode: "es",
  //       countryCode: "ES",
  //       lanugaeName: "Español"),
  //   LanguageModel(
  //       id: "French",
  //       languageCode: "fr",
  //       countryCode: "FR",
  //       lanugaeName: "Français"),
  //   LanguageModel(
  //       id: "Hindi",
  //       languageCode: "hi",
  //       countryCode: "HI",
  //       lanugaeName: "हिंदी"),
  //   LanguageModel(
  //       id: "Arabic",
  //       languageCode: "ar",
  //       countryCode: "AR",
  //       lanugaeName: "عربي"),
  // ];

  //for ads
  //android
  static String androidAppId = 'ca-app-pub-3018789677887592~4132527561';
  static String androidBannerAd = 'ca-app-pub-3018789677887592/2613192643';
  static String androidInterstitialAd =
      'ca-app-pub-3018789677887592/8025301420';
  //ios
  static String iOsAppId = 'ca-app-pub-3018789677887592~6223983214';
  static String iOsBannerAd = 'ca-app-pub-3018789677887592/1044163940';
  static String iOsInterstitialAd = 'ca-app-pub-3018789677887592/8731082275';
}
