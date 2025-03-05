import 'package:dio/dio.dart';
import 'package:untitled/core/errors/error_model.dart';

class ServerException implements Exception {
  final ErrorModel errmodel;

  ServerException({
    required this.errmodel,
  });
}


void hndleDioException(DioException e) {
  switch(e.type){
    case DioExceptionType.connectionTimeout:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
    // TODO: Handle this case.
      throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch(e.response?.statusCode){
        case 400: // Bad request
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
        case 401: // unauthorized
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
        case 403: // forbidden
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
        case 404: // not found
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
        case 409: // cofficient
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
        case 422: // unprocessable Entity
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
        case 405: // Server Exception
          throw ServerException(errmodel: ErrorModel.fromJson(e.response!.data));
      }
      throw UnimplementedError();
  }
}