import 'failure.dart';
import 'errors_data_source/json_error.dart';
import 'errors_data_source/other_errors.dart';

class ErrorHandlerCustom implements Exception {
  late Failure failure;

  ErrorHandlerCustom.handle(dynamic error) {
    // json error parser
    if (error is FormatException) {
      failure = handleJsonError(error);
    }
    // json error parser
    else if (error is DataSourceOtherError) {
      failure = handleOtherError(error);
    }
    // default error
    else {
      failure = Failure(-1, error.toString(),TypeMsg.error);
      // failure = DataSourceOtherError.defaultError.getFailure();
    }
  }
}

