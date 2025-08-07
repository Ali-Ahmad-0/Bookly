import 'package:dio/dio.dart';

abstract class Failure {
  String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.error) {
        case DioExceptionType.badResponse:
        return ServerFailure('Bad response from server');

        case DioExceptionType.cancel:
        return ServerFailure('Request canceled');
        case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');
        case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');
        case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');

        case DioExceptionType.connectionError:
        return ServerFailure('Connection error');
        default:
        return ServerFailure('there is something went wrong , try again later');
    
      
    }
  }
}
