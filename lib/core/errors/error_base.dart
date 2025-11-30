import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'package:retrogate_server/generated/errors/proto/v1/errors.pb.dart';

class ErrorBase implements GrpcError {
  ErrorBase(int statusCode, ErrorCode code, String this.message)
    : code = statusCode,
      rawResponse = null,
      trailers = {
        'code': code.name,
      },
      details = [ErrorDetails()
        ..code = code
      ];

  @override
  int code;

  @override
  String get codeName => StatusCode.name(code) ?? StatusCode.name(StatusCode.unknown)!;

  @override
  List<GeneratedMessage>? details;

  @override
  String? message;

  @override
  Object? rawResponse;

  @override
  Map<String, String>? trailers;
}