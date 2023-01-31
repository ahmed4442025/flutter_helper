import 'string_errors_manager.dart';

class ErrorCodes {
  static const int SUCCESS = 200; // success with data
  // local status code
  static const int defaultError = -1;
  //      ------ JSON ------
  static const int unexpectedCharacter = -7;
  // other errors
  static const int assetNotFound = -8;
  static const int responseIsNull = -9;
}

class ErrorMessages {
  static const String success = StringErrorManager.success; // success with data
  // json
  static const String unexpectedCharacter = StringErrorManager.parsingJsonErr;
  // other errors
  static const String defaultError = StringErrorManager.defaultError;
  static const String assetNotFound = StringErrorManager.assetNotFound;
  static const String responseIsNull = StringErrorManager.responseIsNull;
}
