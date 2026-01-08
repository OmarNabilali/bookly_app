import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection TimeOut');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send TimeOut');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive TimeOut');

      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate ');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Connection Error');
      case DioExceptionType.unknown:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  factory ServerFailure.fromResponse({
    required int statusCode,
    required var response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFailure(errMessage: 'Page Not Found');
    } else {
      return ServerFailure(
        errMessage: 'Oops,there was an erro,Please try Again',
      );
    }
  }
}
