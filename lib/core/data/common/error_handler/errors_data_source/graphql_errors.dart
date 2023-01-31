import '../failure.dart';
import '../res/error_source.dart';

enum DataSourceGraphQlError {
  defaultError,
}

Failure handleGraphQlError(DataSourceGraphQlError error) {
  switch (error) {
    case DataSourceGraphQlError.defaultError:
      return DataSourceGraphQlError.defaultError.getFailure();
  }
  return Failure(ErrorCodes.defaultError, error.toString(), TypeMsg.error);
}

extension DataSourceExtension on DataSourceGraphQlError {
  Failure getFailure() {
    switch (this) {
      case DataSourceGraphQlError.defaultError:
        return Failure(
            ErrorCodes.defaultError, ErrorMessages.defaultError, TypeMsg.error);
    }
  }
}
