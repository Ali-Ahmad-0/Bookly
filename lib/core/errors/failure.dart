import 'package:dio/dio.dart';

abstract class Failure {
  String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Ssl Certificate');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 422) {
      return ServerFailure('Unprocessable Entity, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please try later');
    } else {
      return ServerFailure('Oops There was an Error, Please try again');
    }
  }
}
