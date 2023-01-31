import '../failure.dart';
import '../res/error_source.dart';

Failure handleJsonError(FormatException error) {
  return Failure(ErrorCodes.unexpectedCharacter, "${error.message} ", TypeMsg.error);
}
