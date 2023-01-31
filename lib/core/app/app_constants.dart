class AppConstants {
  // debug
  static const bool isTestMode = false;

  static const String empty = "";
  static const int zero = 0;

  // http
  static const String endPointUrl = 'https://dev.meta-pos.net/graphql/v1'; // dev
  // static const String endPointUrl = 'https://meta-pos.net/graphql/v1';    // live
  static const bool printDioLog = false;
  static const bool useProxyDio = false;
  static const String proxy = '192.168.1.2:8888';
  static const int splashDelay = 1;
  static const int onBoardingNextPageDurationMilliseconds = 750;
  static const String defaultLang = "ar";
}
