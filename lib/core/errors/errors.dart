import 'package:grpc/grpc.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/errors/proto/v1/errors.pbenum.dart';

class ErrorNotFound extends ErrorBase {
  ErrorNotFound(String message)
      : super(StatusCode.notFound, ErrorCode.ERROR_CODE_NOT_FOUND, message);
}

class ErrorInvalidArgument extends ErrorBase {
  ErrorInvalidArgument(String message)
      : super(StatusCode.invalidArgument, ErrorCode.ERROR_CODE_INVALID_ARGUMENT, message);
}

class ErrorInvalidFormat extends ErrorBase {
  ErrorInvalidFormat(String message)
      : super(StatusCode.invalidArgument, ErrorCode.ERROR_CODE_INVALID_FORMAT, message);
}

class ErrorAlreadyExists extends ErrorBase {
  ErrorAlreadyExists(String message)
      : super(StatusCode.alreadyExists, ErrorCode.ERROR_CODE_ALREADY_EXISTS, message);
}

class ErrorHttpRequest extends ErrorBase {
  ErrorHttpRequest(String message, int statusCode)
      : super(StatusCode.internal, ErrorCode.values.firstWhere((e) => e.value == statusCode, orElse: () => ErrorCode.ERROR_CODE_UNSPECIFIED), message);
}

class ErrorFileNotFound extends ErrorBase {
  ErrorFileNotFound(String message)
      : super(StatusCode.notFound, ErrorCode.ERROR_CODE_FILE_NOT_FOUND, message);
}

class ErrorFileRead extends ErrorBase {
  ErrorFileRead(String message)
      : super(StatusCode.internal, ErrorCode.ERROR_CODE_FILE_READ_ERROR, message);
}

class ErrorFileWrite extends ErrorBase {
  ErrorFileWrite(String message)
      : super(StatusCode.internal, ErrorCode.ERROR_CODE_FILE_WRITE_ERROR, message);
}