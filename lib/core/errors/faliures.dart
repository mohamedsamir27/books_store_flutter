import 'package:dio/dio.dart';

abstract class Faliures {
  final String errorMessage;

  Faliures(this.errorMessage);
}

class ServerFaliure extends Faliures {
  ServerFaliure(super.errorMessage);

  factory ServerFaliure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection timeout');

      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Receive timeout');

      case DioExceptionType.badResponse:
        return ServerFaliure(
          dioException.response?.data['error']['message'] ??
              'Bad response from server',
        );
      case DioExceptionType.cancel:
        return ServerFaliure('Request cancelled');

      case DioExceptionType.connectionError:
        return ServerFaliure('connection Error');

      case DioExceptionType.badCertificate:
        return ServerFaliure('bad Certificate');
      case DioExceptionType.unknown:
        return ServerFaliure('Unexpected error, please try again');
    }
  }
}
